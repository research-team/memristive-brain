from datetime import datetime as dt
import time

import numpy
import visa
import logging


def set_gen_square(log, dev, source=1, dutycycle=50, period=1, period_unit="s", vhigh=1, vhigh_unit="v", vlow=0,
                   vlow_unit="v"):
    delay = 0.15
    log.debug("SET UP GENERATOR SOURCE {} SQUARE SIGNAL PARAMETERS".format(source))
    log.debug("SET SQUARE on SOURCE {} - {}".format(source, dev.write("SOUR{}:FUNC SQU".format(source))))
    time.sleep(delay)
    log.debug("SET PERIOD on SOURCE {} - {}".format(source, dev.write(
        "SOUR{}:FUNC:SQU:PER {}{}".format(source, period, period_unit))))
    time.sleep(delay)
    log.debug("SET DUTY CYCLE on SOURCE {} - {}".format(source,
                                                        dev.write("SOUR{}:FUNC:SQU:DCYC {}".format(source, dutycycle))))
    time.sleep(delay)
    log.debug("SET HIGH VOLTAGE on SOURCE {} - {}".format(source, dev.write(
        "SOUR{}:VOLT:HIGH {}{}".format(source, vhigh, vhigh_unit))))
    time.sleep(delay)
    log.debug("SET LOW VOLTAGE on SOURCE {} - {}".format(source, dev.write(
        "SOUR{}:VOLT:LOW {}{}".format(source, vlow, vlow_unit))))
    time.sleep(delay)
    log.debug("DONE!!!")


def set_osc_ch(log, dev, channel=1, vpd=1, zero_level=0):
    log.debug("SETTING OSCILLOSCOPE CHANNEL {}".format(channel))
    delay = 0.1
    log.debug("SET OSC CH{} VOLTS PER DIV - {}".format(channel, dev.write(
        'CH{}:VOLTS {:.2f}'.format(channel, vpd))))  # VOLTS per div # 25 points per vertical div
    time.sleep(delay)
    log.debug("SET OSC CH{} ZERO LEVEL - {}".format(channel, dev.write(
        "CH{}:POS {}".format(channel, zero_level))))  # in DIVS not in volts
    time.sleep(delay)


def set_osc_hor(log, dev, t=10 ** -3):
    log.debug("SET HORIZONTAL SCALE - {}".format(ch, dev.write(
        'HOR:MAIN:SCALE {:.9f}'.format(t))))  # Sec per div # 250 points in horizontal div
    time.sleep(0.15)


def set_trigger(log, dev, channel=1, level=1.0):
    log.debug("TRIGGER SETUP")
    delay = 0.1
    log.debug("SET OSC TRIGGER SOURCE TO CH{} - {}".format(channel, dev.write(
        'TRIG:MAI:PUL:SOU CH{}'.format(channel))))
    time.sleep(delay)
    log.debug("SET TRIG LEVEL - {}".format(dev.write('TRIG:MAI:LEV {:.2f}'.format(level*-1))))
    time.sleep(delay)


if __name__ == '__main__':
    # create logger with 'spam_application'
    l = logging.getLogger('memr_test_stand')
    l.setLevel(logging.DEBUG)
    # create console handler with a higher log level
    ch = logging.StreamHandler()
    ch.setLevel(logging.DEBUG)
    # create formatter and add it to the handlers
    formatter = logging.Formatter('{asctime}::{levelname:^8s}- {message}', style="{")
    ch.setFormatter(formatter)
    # add the handlers to the logger
    l.addHandler(ch)

    rm = visa.ResourceManager()
    l.debug(rm.list_resources("?*"))
    gen = rm.open_resource("USB0::0x4348::0x5537::NI-VISA-40005::RAW")
    gen.timeout = 5000
    osc = rm.open_resource("USB0::0x0699::0x03A6::C041256::INSTR")
    l.debug(gen)
    l.debug(gen.write("*RST"))
    l.debug(osc)
    l.debug(osc.query("*IDN?"))

    set_gen_square(l, gen, vhigh=800, vhigh_unit="mV", vlow=300, vlow_unit="mV")
    set_osc_ch(l, osc, vpd=0.5)
    set_osc_hor(l, osc)
    set_trigger(l, osc)

    #
    # result = []
    #
    # for i in range(100):
    #     osc.write('acquire:state on')  # record one snapshot
    #     # basically, screenshot
    #
    #     # receive data and convert to list of integers
    #     data = osc.query("curve?")
    #     result += data.split()[1].split(",")
    #
    # s = " ".join(result)
    # with open("testdata.txt", "w") as f:
    #     f.write(s)

    gen.close()
    osc.close()
