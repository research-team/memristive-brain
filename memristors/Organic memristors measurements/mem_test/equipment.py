import logging
import visa
import time
from enum import Enum


class Oscilloscope:
    def __init__(self,
                 logger_name, dev_id, message_delay=0.1):
        self.__logger = logging.getLogger(logger_name)
        rm = visa.ResourceManager()
        self.__device = rm.open_resource(dev_id)
        self.__delay = message_delay

        self.__device.timeout = 5000
        self.__device.encoding = "utf-8"

        self.__logger.debug(self.__device)
        self.__logger.debug(self.__device.query("*IDN?"))
        self.__logger.debug(self.__device.write("DATa:ENCdg RIBinary"))
        self.__logger.debug(self.__device.write("DATa:WIDth 2"))
        self.__logger.debug("OSCILLOSCOPE INIT COMPLETE")

    @property
    def delay(self):
        return self.__delay

    @delay.setter
    def delay(self, value):
        self.__delay = value

    def channel_setup(self, channel=1, vpd=1, zero_level=0):
        self.__logger.debug("SETTING OSCILLOSCOPE CHANNEL {}".format(channel))
        self.__logger.debug("SET OSC CH{} VOLTS PER DIV - {}".format(channel, self.__device.write(
            'CH{}:VOLTS {:.2f}'.format(channel, vpd))))  # VOLTS per div # 25 points per vertical div
        time.sleep(self.__delay)
        self.__logger.debug("SET OSC CH{} ZERO LEVEL - {}".format(channel, self.__device.write(
            "CH{}:POS {}".format(channel, zero_level))))  # in DIVS not in volts
        time.sleep(self.__delay)
        self.__logger.debug("CHANNEL {} SETUP COMPLETE".format(channel))

    def horisontal_time_setup(self, t=10 ** -3):
        self.__logger.debug("SET HORIZONTAL SCALE - {}".format(self.__device.write(
            'HOR:MAIN:SCALE {:.9f}'.format(t))))  # Sec per div # 250 points in horizontal div
        time.sleep(self.__delay)
        self.__logger.debug("SET HORIZONTAL SCALE COMPLETE")

    def set_trigger(self, channel=1, level=1.0):
        self.__logger.debug("TRIGGER SETUP CHANNEL{}".format(channel))
        self.__logger.debug("SET OSC TRIGGER SOURCE TO CH{} - {}".format(channel, self.__device.write(
            'TRIG:MAI:PUL:SOU CH{}'.format(channel))))
        time.sleep(self.__delay)
        self.__logger.debug("SET TRIG LEVEL - {}".format(self.__device.write('TRIG:MAI:LEV {:.2f}'.format(level))))
        time.sleep(self.__delay)
        self.__logger.debug("TRIGGER SETUP COMPLETE")

    def osc_get_data(self):
        """RETURS DATA IN STRING FORMAT"""
        self.__logger.debug("READ OSC DATA - {}".format(self.__device.write('ACQ:STATE ON')))  # record one snapshot
        time.sleep(self.__delay)
        # basically, screenshot

        # receive data and return as string of bytes
        data = self.__device.query_binary_values('CURV?', datatype='h', is_big_endian=True)

        return data

    def custom_write(self, query):
        self.__logger.debug("OSCILLOSCOPE CUSTOM WRITE")
        self.__device.write(query)
        self.__logger.debug("OSCILLOSCOPE CUSTOM WRITE COMPLETE")

    def custom_query(self, query):
        self.__logger.debug("OSCILLOSCOPE CUSTOM QUERY")
        result = self.__device.query_ascii_values(query)
        self.__logger.debug("OSCILLOSCOPE CUSTOM QUERY RESULT: {}".format(result))
        return result

    def close(self):
        self.__device.close()

class SignalShape(Enum):
    SQUARE = "SQU"
    SINE = "SIN"
    RAMP = "RAMP"
    PULSE = "PULS"
    NOISE = "NOIS"


class Generator:

    def __init__(self,
                 logger_name, dev_id, message_delay=0.15):
        self.__logger = logging.getLogger(logger_name)
        rm = visa.ResourceManager()
        self.__device = rm.open_resource(dev_id)
        self.__delay = message_delay

        self.__device.timeout = 5000

        self.__logger.debug(self.__device)
        self.__logger.debug(self.__device.write("*RST"))
        time.sleep(self.__delay)

        self.__high_voltage = [0, 0]
        self.__low_voltage = [0, 0]
        self.set_signal_high_voltage(source=1, vhigh=0, vhigh_unit="v")
        self.set_signal_low_voltage(source=1, vlow=0, vlow_unit="v")
        self.set_signal_high_voltage(source=1, vhigh=0, vhigh_unit="v")
        self.__logger.debug("GENERATOR INIT COMPLETE")

    @property
    def delay(self):
        return self.__delay

    @delay.setter
    def delay(self, value):
        self.__delay = value

    def set_signal_period(self, source=1, period=1, period_unit="s"):
        self.__logger.debug("SET PERIOD on SOURCE {} - {}".format(source, self.__device.write(
            "SOUR{}:FUNC:SQU:PER {}{}".format(source, period, period_unit))))
        time.sleep(self.__delay)
        self.__logger.debug("SET PERIOD on SOURCE {} COMPLETE".format(source))

    def set_signal_duty_cycle(self, source=1, dutycycle=50):
        self.__logger.debug("SET DUTY CYCLE on SOURCE {} - {}".format(source,
                                                                      self.__device.write(
                                                                          "SOUR{}:FUNC:SQU:DCYC {}".format(source,
                                                                                                           dutycycle))))
        time.sleep(self.__delay)
        self.__logger.debug("SET DUTY CYCLE on SOURCE {} COMPLETE".format(source))

    def set_signal_high_voltage(self, source=1, vhigh=1, vhigh_unit="v"):
        self.__logger.debug("SET HIGH VOLTAGE on SOURCE {} - {}".format(source, self.__device.write(
            "SOUR{}:VOLT:HIGH {}{}".format(source, vhigh, vhigh_unit))))
        time.sleep(self.__delay)
        self.__high_voltage[source - 1] = vhigh if vhigh_unit.lower() == "v" else vhigh * 0.001
        self.__logger.debug("SET HIGH VOLTAGE on SOURCE {} COMPLETE".format(source))

    def set_signal_low_voltage(self, source=1, vlow=0, vlow_unit="v"):
        self.__logger.debug("SET LOW VOLTAGE on SOURCE {} - {}".format(source, self.__device.write(
            "SOUR{}:VOLT:LOW {}{}".format(source, vlow, vlow_unit))))
        time.sleep(self.__delay)
        self.__low_voltage[source - 1] = vlow if vlow_unit.lower() == "v" else vlow * 0.001
        self.__logger.debug("SET LOW VOLTAGE on SOURCE {} COMPLETE".format(source))

    def __map_gen_volt_setup(self, v, v_unit):
        return v if v_unit.lower() == "v" else v * 0.001

    def set_signal_high_low_voltage(self, source=1, vhigh=1, vhigh_unit="v", vlow=0, vlow_unit="v"):
        vlow_val = self.__map_gen_volt_setup(vlow, vlow_unit)
        if vlow_val < self.__low_voltage[source - 1]:
            self.set_signal_low_voltage(self, source=source, vlow=vlow, vlow_unit=vlow_unit)
            self.set_signal_high_voltage(self, source=source, vhigh=vhigh, vhigh_unit=vhigh_unit)
        else:
            self.set_signal_high_voltage(self, source=source, vhigh=vhigh, vhigh_unit=vhigh_unit)
            self.set_signal_low_voltage(self, source=source, vlow=vlow, vlow_unit=vlow_unit)

    def start_source(self, source=1):
        self.__logger.debug("TURN GEN SOURCE{} ON - {}".format(source, self.__device.write('OUTP{} 1'.format(source))))
        time.sleep(self.__delay)

    def stop_source(self, source=1):
        self.__logger.debug("TURN GEN SOURCE{} OFF - {}".format(source, self.__device.write('OUTP{} 0'.format(source))))
        time.sleep(self.__delay)

    def set_signal_shape(self, source=1, shape=SignalShape.SQUARE):
        self.__logger.debug(
            "SET {} on SOURCE {} - {}".format(shape.name, source,
                                              self.__device.write("SOUR{}:FUNC {}".format(source, shape.value))))
        time.sleep(self.__delay)
        self.__logger.debug("SHAPE SET")

    def set_square_signal(self, source=1, dutycycle=50, period=1, period_unit="s", vhigh=1, vhigh_unit="v", vlow=0,
                          vlow_unit="v"):
        self.__logger.debug("SET UP GENERATOR SOURCE {} SQUARE SIGNAL PARAMETERS".format(source))

        self.set_signal_shape(source=source, shape=SignalShape.SQUARE)

        self.set_signal_period(source=source, period=period, period_unit=period_unit)

        self.set_signal_duty_cycle(source=source, dutycycle=dutycycle)

        self.set_signal_high_voltage(source=source, vhigh=vhigh, vhigh_unit=vhigh_unit)

        self.set_signal_low_voltage(source=source, vlow=vlow, vlow_unit=vlow_unit)

        self.__logger.debug("DONE!!!")

    def custom_write(self, query):
        self.__logger.debug("GENERATOR CUSTOM WRITE")
        self.__device.write(query)
        self.__logger.debug("GENERATOR CUSTOM WRITE COMPLETE")

    def custom_query(self, query):
        self.__logger.debug("GENERATOR CUSTOM QUERY")
        result = self.__device.query_ascii_values(query)
        self.__logger.debug("GENERATOR CUSTOM QUERY RESULT: {}".format(result))
        return result

    def close(self):
        self.__device.close()