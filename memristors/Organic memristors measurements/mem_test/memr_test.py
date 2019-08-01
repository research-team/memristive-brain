import os
from datetime import datetime as dt
from datetime import timedelta as td
from equipment import Generator as Gen
from equipment import Oscilloscope as Osc
from equipment import Lgr

if __name__ == '__main__':
    log_name = 'memtest'
    l = Lgr(log_name)
    start_time = dt.now().strftime("%d#%m#%Y#%H#%M#%S")
    l.d(start_time)
    gen = Gen(log_name, "USB0::0x4348::0x5537::NI-VISA-40005::RAW")
    osc = Osc(log_name, "USB0::0x0699::0x03A6::C041256::INSTR")

    osc.channel_setup(1, 0.1, -15)
    osc.set_data_source(1)
    osc.horisontal_time_setup(0.0025)

    vh = 650
    vl = -350
    gen.set_square_signal(dutycycle=50, vhigh=vh, vhigh_unit="mV", vlow=0.7, vlow_unit="v", period=10,
                          period_unit="ms")

    exp_time = td(minutes=10, seconds=0)

    os.mkdir("plotter/mem_test/{}".format(start_time))

    input("PLUG MEMR")

    for i in range(0, 10):
        result = []
        result_times = []

        l.d("EXP {} HIGH - - START".format(i))

        osc.channel_setup(1, 1, -4.5)
        gen.set_signal_high_voltage(1, vh, "mv")
        gen.set_signal_low_voltage(1, vh, "mv")

        exp_start_time = dt.now()
        gen.start_source(1)
        while dt.now() - exp_start_time < exp_time:
            result.append(osc.get_data())
            result_times.append(dt.now().strftime("%d#%m#%Y#%H#%M#%S#%f"))
        gen.stop_source(1)

        with open("plotter/w/{}/test_High_{}.txt".format(start_time, i), "w") as f:
            l.d(f.write(result.__str__()))
            f.write("\n")
            l.d(f.write(result_times.__str__()))

        l.d("EXP {} HIGH -- STOP".format(i))

        result = []
        result_times = []

        l.d("RESET START")
        osc.channel_setup(1, 1, 4)
        gen.set_signal_low_voltage(1, vl, "mv")
        gen.set_signal_high_voltage(1, vl, "mv")

        reset_start_time = dt.now()
        gen.start_source(1)
        while dt.now() - reset_start_time < exp_time:
            result.append(osc.get_data())
            result_times.append(dt.now().strftime("%d#%m#%Y#%H#%M#%S#%f"))
        gen.stop_source(1)

        with open("plotter/mem_test/{}/test_Low_{}.txt".format(start_time, i), "w") as f:
            l.d(f.write(result.__str__()))
            f.write("\n")
            l.d(f.write(result_times.__str__()))

        l.d("RESET STOP")
        l.d("test {} DONE".format(i))
