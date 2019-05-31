import logging
import os
import time
from datetime import datetime as dt
from datetime import timedelta as td
from equipment import Generator as Gen
from equipment import Oscilloscope as Osc

if __name__ == '__main__':
    start_time = dt.now().strftime("%d#%m#%Y#%H#%M#%S")
    os.mkdir("full_test/{}".format(start_time))

    # create logger with 'spam_application'
    logger = logging.getLogger('full_stand_test')
    logger.setLevel(logging.DEBUG)
    # create console handler with a higher log level
    ch = logging.StreamHandler()
    fh = logging.FileHandler("full_test/{}/exp_{}.log".format(start_time, start_time))

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

    gen = Gen('full_stand_test', "USB0::0x4348::0x5537::NI-VISA-40005::RAW")
    osc = Osc('full_stand_test', "USB0::0x0699::0x03A6::C041256::INSTR")

    gen.set_square_signal(source=1, dutycycle=15, vhigh=3, vhigh_unit="V", vlow=0, vlow_unit="v", period=20,
                          period_unit="ms")
    gen.set_square_signal(source=2, dutycycle=15, vhigh=800, vhigh_unit="mV", vlow=300, vlow_unit="mv", period=20,
                          period_unit="ms")
    gen.custom_write("PHAS:SYNC")

    channels = {'mem': 1, 'fake': 2, 'pwm': 3}
    for k, v in channels:
        osc.channel_setup(v, 1, 0)
    osc.horisontal_time_setup(0.0025)

    exp_time = td(minutes=10, seconds=0)
    reset_time = td(minutes=2, seconds=0)  # time to reset memr

    logger.debug("start dancing")

    # range for pseudo memr device
    vrange1 = [x / 10 for x in range(20, 31)]

    # range for memr device
    vrange2 = [0.8]
    #
    # for v1 in vrange1:
    #     for v2 in vrange2:
    #         for ph in range(0, 370, 10):
    #             logger.debug("Voltage1 {}".format(v1))
    #             logger.debug("Voltage2 {}".format(v2))
    #             logger.debug("Phase {}".format(ph))
    #             gen.set_square_signal(source=1, vhigh=v1)
    #             gen.set_square_signal(source=2, vhigh=v2)
    #
    #             source1 = []
    #             source2 = []
    #             result = []
    #             result_times = []
    #
    #             exp_start_time = dt.now()
    #             gen.start_source(1)
    #             gen.start_source(2)
    #             while dt.now() - exp_start_time < exp_time:
    #                 osc.set_data_source(channel=channels['pwm'])
    #                 result.append(osc.get_data())
    #                 osc.set_data_source(channel=channels['mem'])
    #                 source1.append(osc.get_data())
    #                 osc.set_data_source(channel=channels['fake'])
    #                 source2.append(osc.get_data())
    #                 result_times.append(dt.now().strftime("%d#%m#%Y#%H#%M#%S#%f"))
    #             gen.stop_source(1)
    #             gen.stop_source(2)
