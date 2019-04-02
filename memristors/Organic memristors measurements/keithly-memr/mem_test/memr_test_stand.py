from datetime import datetime as dt
import time

import numpy
import visa
import logging

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
    osc = rm.open_resource("USB0::0x0699::0x03A6::C041256::INSTR")
    l.debug(gen)
    l.debug(osc)
    l.debug(osc.query("*IDN?"))

    osc.write('ch1:volts 2.5')  # VOLTS per div
    # 25 points per vertical div
    osc.write("CH1:POSition 0")  # in DIVS not in volts
    osc.write('hor:main:scale 5e-4')  # Sec per div
    # 250 points in horizontal div
    # set trigger level in volts
    osc.write('trig:main:level 2.3')

    result = []

    for i in range(100):
        osc.write('acquire:state on')  # record one snapshot
        # basically, screenshot

        # receive data and convert to list of integers
        data = osc.query("curve?")
        result += data.split()[1].split(",")

    s = " ".join(result)
    with open("testdata.txt", "w") as f:
        f.write(s)


def set_osc_square(osc):
    pass