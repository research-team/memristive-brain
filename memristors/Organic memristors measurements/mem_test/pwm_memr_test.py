from datetime import datetime as dt
from datetime import timedelta as td
import time
from equipment import Generator as Gen
from equipment import Oscilloscope as Osc

import os

import visa
import logging

if __name__ == '__main__':
    start_time = dt.now().strftime("%d#%m#%Y#%H#%M#%S")

    # create logger with 'spam_application'
    logger = logging.getLogger('pwm_memr_test_stand')
    logger.setLevel(logging.DEBUG)
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
    logger.addHandler(ch)
    logger.addHandler(fh)
    logger.info("experiment started at {}".format(start_time))

    rm = visa.ResourceManager()
    logger.debug(rm.list_resources("?*"))
    gen = Gen('pwm_memr_test_stand', "USB0::0x4348::0x5537::NI-VISA-30002::RAW")
    osc = Osc('pwm_memr_test_stand', "USB0::0x0699::0x03A6::C041256::INSTR")

    try:

        gen.set_square_signal(dutycycle=30, vhigh=3, vhigh_unit="V", vlow=0, vlow_unit="v", period=10, period_unit="ms")
        gen.set_square_signal(source=2, dutycycle=30, vhigh=3, vhigh_unit="V", vlow=0, vlow_unit="v", period=10,
                              period_unit="ms")

        gen.custom_write("PHAS:SYNC")



        exp_start_time = dt.now()

        gen.start_source(1)
        gen.start_source(2)

        gen.close()
        osc.close()
        logger.debug("ALL DONE")
    except KeyboardInterrupt:
        gen.close()
        osc.close()
        logger.warning("KEYBOARD INTERRUPT")
