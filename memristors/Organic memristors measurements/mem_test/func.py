import time

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
    log.debug("SET OSC CH{} VOLTS PER DIV - {}".format(channel, dev.write('CH{}:VOLTS {:.2f}'.format(channel, vpd))))  # VOLTS per div # 25 points per vertical div
    time.sleep(delay)
    log.debug("SET OSC CH{} ZERO LEVEL - {}".format(channel, dev.write("CH{}:POS {}".format(channel, zero_level))))  # in DIVS not in volts
    time.sleep(delay)


def set_osc_hor(log, dev, t=10 ** -3):
    log.debug("SET HORIZONTAL SCALE - {}".format(ch, dev.write('HOR:MAIN:SCALE {:.9f}'.format(t))))  # Sec per div # 250 points in horizontal div
    time.sleep(0.15)


def set_trigger(log, dev, channel=1, level=1.0):
    log.debug("TRIGGER SETUP")
    delay = 0.1
    log.debug("SET OSC TRIGGER SOURCE TO CH{} - {}".format(channel, dev.write('TRIG:MAI:PUL:SOU CH{}'.format(channel))))
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
