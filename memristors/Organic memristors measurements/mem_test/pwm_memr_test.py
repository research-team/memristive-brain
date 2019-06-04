from datetime import datetime as dt
from datetime import timedelta as td
from equipment import Generator as Gen
from equipment import Oscilloscope as Osc
from equipment import Lgr
import os

import visa

if __name__ == '__main__':
    start_time = dt.now().strftime("%d#%m#%Y#%H#%M#%S")
    l = Lgr('pwm_memr_test_stand', "exp_{}.log".format(start_time))

    l.i("experiment started at {}".format(start_time))

    try:
        rm = visa.ResourceManager()
        l.d(rm.list_resources("?*"))
        gen = Gen('pwm_memr_test_stand', "USB0::0x4348::0x5537::NI-VISA-40002::RAW")
        osc = Osc('pwm_memr_test_stand', "USB0::0x0699::0x03A6::C041256::INSTR")

        osc.channel_setup(3, 1, 0)
        osc.set_data_source(3)
        osc.horisontal_time_setup(0.0025)

        gen.set_square_signal(dutycycle=30, vhigh=3, vhigh_unit="V", vlow=0, vlow_unit="v", period=10, period_unit="ms")
        gen.set_square_signal(source=2, dutycycle=30, vhigh=3, vhigh_unit="V", vlow=0, vlow_unit="v", period=10,
                              period_unit="ms")

        gen.custom_write("PHAS:SYNC")

        input("PLUG MEMR")
        # EXPERIMENT
        os.mkdir("plotter/test/{}".format(start_time))

        exp_time = td(minutes=10, seconds=0)
        reset_time = td(minutes=2, seconds=0)  # time to reset memr

        # ---------------------------------------------------
        # growth_up test
        l.i("GROW UP TEST")
        gen.custom_write("PHAS 340")
        reset_start_time = dt.now()
        gen.start_source(1)
        gen.start_source(2)

        while (dt.now() - reset_start_time) < reset_time:
            pass
        gen.stop_source(1)
        gen.stop_source(2)

        gen.start_source(1)
        gen.start_source(2)

        for i in range(0, 110, 10):
            l.d("PHASE SHIFT {}".format(i))
            result = []
            result_times = []

            # set phase
            gen.custom_write("PHAS {}".format(i))
            # gen.set_signal_high_voltage(1, 3, "V")
            # gen.set_signal_low_voltage(1, 0, "mV")

            exp_start_time = dt.now()
            gen.start_source(1)
            gen.start_source(2)
            while dt.now() - exp_start_time < exp_time:
                result.append(osc.get_data())
                result_times.append(dt.now().strftime("%d#%m#%Y#%H#%M#%S#%f"))
            gen.stop_source(1)
            gen.stop_source(2)

            # RESET
            gen.custom_write("PHAS 340")
            # gen.set_signal_low_voltage(1, reset_high, "mV")
            # gen.set_signal_high_voltage(1, reset_low, "mV")

            reset_start_time = dt.now()
            l.d("RESET START")
            gen.start_source(1)
            gen.start_source(2)
            l.d("WRITING TO FILE")
            with open("plotter/test/{}/test_{}_{}.txt".format(start_time, i, start_time), "w") as f:
                l.d(f.write(result.__str__()))
                f.write("\n")
                l.d(f.write(result_times.__str__()))
            while dt.now() - reset_start_time < reset_time:
                pass
            gen.stop_source(1)
            gen.stop_source(2)
            l.d("PWM {} RESET DONE".format(i))
        # ---------------------------------------------------
        # fall_down test
        gen.custom_write("PHAS 0")
        reset_start_time = dt.now()
        gen.start_source(1)
        gen.start_source(2)

        while (dt.now() - reset_start_time) < reset_time:
            pass
        gen.stop_source(1)
        gen.stop_source(2)

        gen.start_source(1)
        gen.start_source(2)

        l.i("DROP DOWN TEST")
        for i in range(270, 360, 10):
            l.d("PHASE SHIFT {}".format(i))
            result = []
            result_times = []

            # set phase
            gen.custom_write("PHAS {}".format(i))
            # gen.set_signal_high_voltage(1, 3, "V")
            # gen.set_signal_low_voltage(1, 0, "mV")

            exp_start_time = dt.now()
            gen.start_source(1)
            gen.start_source(2)
            while dt.now() - exp_start_time < exp_time:
                result.append(osc.get_data())
                result_times.append(dt.now().strftime("%d#%m#%Y#%H#%M#%S#%f"))
            gen.stop_source(1)
            gen.stop_source(2)

            # RESET
            gen.custom_write("PHAS 0")
            # gen.set_signal_low_voltage(1, reset_high, "mV")
            # gen.set_signal_high_voltage(1, reset_low, "mV")

            reset_start_time = dt.now()
            l.d("RESET START")
            gen.start_source(1)
            gen.start_source(2)
            l.d("WRITING TO FILE")
            with open("plotter/test/{}/test_{}_{}.txt".format(start_time, i, start_time), "w") as f:
                l.d(f.write(result.__str__()))
                f.write("\n")
                l.d(f.write(result_times.__str__()))
            while dt.now() - reset_start_time < reset_time:
                pass
            gen.stop_source(1)
            gen.stop_source(2)
            l.d("PWM {} RESET DONE".format(i))

        gen.close()
        osc.close()
        l.d("ALL DONE")
    except KeyboardInterrupt:
        gen.close()
        osc.close()
        l.w("KEYBOARD INTERRUPT")
