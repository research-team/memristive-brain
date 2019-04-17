from datetime import datetime as dt
from datetime import timedelta as td
import time

import visa
import logging


def gen_period(log, dev, source=1, period=1, period_unit="s", delay=0.15):
    log.debug("SET PERIOD on SOURCE {} - {}".format(source, dev.write(
        "SOUR{}:FUNC:SQU:PER {}{}".format(source, period, period_unit))))
    time.sleep(delay)


def gen_duty_cycle(log, dev, source=1, dutycycle=50, delay=0.15):
    log.debug("SET DUTY CYCLE on SOURCE {} - {}".format(source,
                                                        dev.write("SOUR{}:FUNC:SQU:DCYC {}".format(source, dutycycle))))
    time.sleep(delay)


def gen_high_voltage(log, dev, source=1, vhigh=1, vhigh_unit="v", delay=0.15):
    log.debug("SET HIGH VOLTAGE on SOURCE {} - {}".format(source, dev.write(
        "SOUR{}:VOLT:HIGH {}{}".format(source, vhigh, vhigh_unit))))
    time.sleep(delay)


def gen_low_voltage(log, dev, source=1, vlow=0, vlow_unit="v", delay=0.15):
    log.debug("SET LOW VOLTAGE on SOURCE {} - {}".format(source, dev.write(
        "SOUR{}:VOLT:LOW {}{}".format(source, vlow, vlow_unit))))
    time.sleep(delay)


def set_gen_square(log, dev, source=1, dutycycle=50, period=1, period_unit="s", vhigh=1, vhigh_unit="v", vlow=0,
                   vlow_unit="v", delay=0.15):
    log.debug("SET UP GENERATOR SOURCE {} SQUARE SIGNAL PARAMETERS".format(source))
    log.debug("SET SQUARE on SOURCE {} - {}".format(source, dev.write("SOUR{}:FUNC SQU".format(source))))
    time.sleep(delay)

    gen_period(log, dev, source=source, period=period, period_unit=period_unit, delay=delay)

    gen_duty_cycle(log, dev, source=source, dutycycle=dutycycle, delay=delay)

    gen_high_voltage(log, dev, source=source, vhigh=vhigh, vhigh_unit=vhigh_unit, delay=delay)

    gen_low_voltage(log, dev, source=source, vlow=vlow, vlow_unit=vlow_unit, delay=delay)

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
    log.debug("SET TRIG LEVEL - {}".format(dev.write('TRIG:MAI:LEV {:.2f}'.format(level))))
    time.sleep(delay)


def start_gen(log, dev, source=1):
    log.debug("TURN GEN SOURCE{} ON - {}".format(source, dev.write('OUTP{} 1'.format(source))))
    time.sleep(0.15)


def stop_gen(log, dev, source=1):
    log.debug("TURN GEN SOURCE{} OFF - {}".format(source, dev.write('OUTP{} 0'.format(source))))
    time.sleep(0.15)


def osc_get_data(log, dev):
    """RETURS DATA IN STRING FORMAT"""
    log.debug("READ OSC DATA - {}".format(dev.write('ACQ:STATE ON')))  # record one snapshot
    time.sleep(0.1)
    # basically, screenshot

    # receive data and return as string of bytes
    data = dev.query_binary_values('CURV?', datatype='h', is_big_endian=True)
    # data = dev.query('CURV?')
    # data = data[13:-1:]
    return data


if __name__ == '__main__':

    start_time = dt.now().strftime("%d#%m#%Y#%H#%M#%S")

    # create logger with 'spam_application'
    l = logging.getLogger('memr_test_stand')
    l.setLevel(logging.DEBUG)
    # create console handler with a higher log level
    ch = logging.StreamHandler()
    fh = logging.FileHandler("exp_{}.log".format(start_time))

    ch.setLevel(logging.DEBUG)
    fh.setLevel(logging.DEBUG)
    # create formatter and add it to the handlers
    formatter = logging.Formatter('{asctime}::{levelname:^8s}- {message}', style="{")
    ch.setFormatter(formatter)
    fh.setFormatter(formatter)
    # add the handlers to the logger
    l.addHandler(ch)
    l.addHandler(fh)

    rm = visa.ResourceManager()
    l.debug(rm.list_resources("?*"))
    gen = rm.open_resource("USB0::0x4348::0x5537::NI-VISA-40002::RAW")
    gen.timeout = 5000
    osc = rm.open_resource("USB0::0x0699::0x03A6::C041256::INSTR")
    osc.timeout = 5000
    osc.encoding = "utf-8"
    l.debug(gen)
    l.debug(gen.write("*RST"))
    l.debug(osc)
    l.debug(osc.query("*IDN?"))
    l.debug(osc.write("DATa:ENCdg RIBinary"))
    l.debug(osc.write("DATa:WIDth 2"))

    ex_grow_vhigh = 800
    ex_grow_vlow = 300
    ex_fall_vhigh = 0
    ex_fall_vlow = -200

    set_gen_square(l, gen, vhigh=0, vhigh_unit="mV", vlow=0, vlow_unit="mV", period=10, period_unit="ms")
    gen_high_voltage(l, gen, 1, 0)
    start_gen(l, gen)

    vpd = 0.75
    rez_coef = 25 // vpd  # 50
    set_osc_ch(l, osc, vpd=vpd, zero_level=0)

    set_osc_hor(l, osc, t=0.005)
    # 5ms per div
    # whole screen 50ms/2500pts=>1/50 ms/pts->20us/pts
    set_trigger(l, osc, level=0.20)

    input("PLUG MEMR")
    # EXPERIMENT

    exp_time = td(minutes=2, seconds=0)
    reset_time = td(minutes=1, seconds=0)  # time to reset memr

    gen_low_voltage(l, gen, 1, -200, "mV")
    gen_high_voltage(l, gen, 1, -200, "mV")
    reset_start_time = dt.now()
    start_gen(l, gen)
    while dt.now() - reset_start_time < reset_time:
        pass
    stop_gen(l, gen)
    gen_duty_cycle(l, gen, dutycycle=50)

    for i in range(5):
        l.debug("exp cnt{}".format(i))
        result = []
        result_times = []
        # PWM
        set_trigger(l, osc, level=0.55)
        gen_high_voltage(l, gen, 1, ex_grow_vhigh, "mV")
        gen_low_voltage(l, gen, 1, ex_grow_vlow, "mV")

        exp_start_time = dt.now()
        start_gen(l, gen)
        while dt.now() - exp_start_time < exp_time:
            result.append(osc_get_data(l, osc))
            result_times.append(dt.now().strftime("%d#%m#%Y#%H#%M#%S#%f"))
        stop_gen(l, gen)

        l.debug("WRITING TO FILE")
        with open("plotter/{}/test_grow_{}_{}.txt".format(start_time, i, start_time), "w") as f:
            l.debug(f.write(result.__str__()))
            f.write("\n")
            l.debug(f.write(result_times.__str__()))
        exp_start_time = dt.now()
        start_gen(l, gen)

        result = []
        result_times = []

        set_trigger(l, osc, level=-0.1)
        gen_low_voltage(l, gen, 1, ex_fall_vlow, "mV")
        gen_high_voltage(l, gen, 1, ex_fall_vhigh, "mV")

        exp_start_time = dt.now()
        start_gen(l, gen)
        while dt.now() - exp_start_time < exp_time:
            result.append(osc_get_data(l, osc))
            result_times.append(dt.now().strftime("%d#%m#%Y#%H#%M#%S#%f"))
        stop_gen(l, gen)

        l.debug("WRITING TO FILE")
        with open("plotter/{}/test_fall_{}_{}.txt".format(start_time, i, start_time), "w") as f:
            l.debug(f.write(result.__str__()))
            f.write("\n")
            l.debug(f.write(result_times.__str__()))

    gen_high_voltage(l, gen, 1, 0, "mV")
    gen_low_voltage(l, gen, 1, 0, "mV")
    start_gen(l, gen)

    gen.close()
    osc.close()
    l.debug("ALL DONE")
