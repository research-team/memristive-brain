from datetime import datetime as dt
from datetime import timedelta as td
import time

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
    # basically, screenshot

    # receive data and return as list of strings
    data = dev.query("CURV?")
    data = data[13:-1:]
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
    gen = rm.open_resource("USB0::0x4348::0x5537::NI-VISA-40005::RAW")
    gen.timeout = 5000
    osc = rm.open_resource("USB0::0x0699::0x03A6::C041256::INSTR")
    osc.timeout = 5000
    l.debug(gen)
    l.debug(gen.write("*RST"))
    l.debug(osc)
    l.debug(osc.query("*IDN?"))


    set_gen_square(l, gen, vhigh=800, vhigh_unit="mV", vlow=300, vlow_unit="mV", period=10, period_unit="ms")

    vpd=0.5
    rez_coef=25//vpd
    set_osc_ch(l, osc, vpd=vpd)

    set_osc_hor(l, osc, t=0.005)
    set_trigger(l, osc, level=0.55)

    start_gen(l, gen)

    result = []
    result_times=[]

    exp_start_time = dt.now()
    exp_time = td(seconds=60)
    amp_time_start = dt.now()
    amp_time = td(seconds=10)
    vhigh = 900
    vlow = 350

    while dt.now() - exp_start_time < exp_time:
        result.append(osc_get_data(l, osc))
        result_times.append(dt.now().strftime("%d#%m#%Y#%H#%M#%S#%f"))
        if dt.now() - amp_time_start > amp_time:
            amp_time_start = dt.now()
            trig_lev =((vhigh-vlow)/2+vlow)/1000
            set_trigger(l, osc, level=trig_lev)
            set_gen_square(l, gen, vhigh=vhigh, vhigh_unit="mV", vlow=vlow, vlow_unit="mV", period=10, period_unit="ms")
            vhigh += 100
            vlow += 50

    stop_gen(l, gen)

    l.debug("WRITING TO FILE")
    with open("test_{}.txt".format(start_time), "w") as f:
        l.debug(f.write(result.__str__()))
        f.write("\n")
        l.debug(f.write(result_times.__str__()))
        f.write("\n")
        f.write(str(rez_coef))
    gen.close()
    osc.close()
    l.debug("ALL DONE")
