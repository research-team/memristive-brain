import time
import numpy
import visa

from equipment import KeithlySmu

for PART in range(1, 4):
    if __name__ == '__main__':
        EXPERIMENT, STAGE = "04", 1
        rm = visa.ResourceManager()
        K = KeithlySmu('keithly', rm.list_resources()[0], delay=0.3)
        K.default_settings()

        if PART == 1:
            K.resetToDefaultState()
            K.flushDataToFile("reset_step_{}.csv".format(EXPERIMENT))

        K.write("SENS:FUNC \"CURR\"")
        time.sleep(0.01)
        K.write("SOUR:FUNC VOLT")
        time.sleep(0.01)

        data = numpy.empty((0, 3))
        delay = 60

        if PART == 1:
            steps = ["0", "0.1", "0.2", "0.3", "0.4", "0.5", "0.6", "0.7", "0.8", "0.9", "1"]
            steps += steps[-2::-1]
            for idx, s in enumerate(steps):
                data = Method(idx, s, EXPERIMENT, PART, delay, data, steps)
            numpy.savetxt("res{}_2_0_0.csv".format(EXPERIMENT), "res{}_1_0_20.csv".format(EXPERIMENT))
        elif PART == 2:
            steps = ["-0.1", "-0.2", "-0.3", "-0.4", "-0.5", "-0.6", "-0.7", "-0.8", "-0.9", "-1"]
            steps += steps[-2::-1]
            for idx, s in enumerate(steps, start=1):
                data = Method(idx, s, EXPERIMENT, PART, delay, data, steps)
        else:
            steps = ["0"]
            PART = 2
            for idx, s in enumerate(steps, start=20):
                data = Method(idx, s, EXPERIMENT, PART, delay, data, steps)

        numpy.savetxt("step_res{}_{}__{}.csv".format(EXPERIMENT, PART, STAGE), data, delimiter=",")
        K.close()


        def Method(idx, s, EXPERIMENT, PART, delay, data, steps):
            K.write("SOUR:VOLT {}".format(s))
            time.sleep(0.01)

            K.write("TRIG:LOAD:LOOP:DUR {},0,\"defbuffer1\"".format(delay))
            time.sleep(0.01)

            K.write("INIT")
            time.sleep(delay + 1)
            K.flushDataToFile("res{}_{}_{}_{}.csv".format(EXPERIMENT, PART, idx, s))
            time.sleep(10)
            size = int(K.query("TRACe:ACTual? \"defbuffer1\"")[0])
            d = K.queryContainer("TRACe:DATA? 1,{}, \"defbuffer1\",SOUR,READ,REL".format(size))
            temp = numpy.reshape(d, (-1, 3))
            data = numpy.append(data, temp, axis=0)
            return data

        # "-0.2", "-0.1", "0", "0.1", "0.2", "0.3", "0.4", "0.5", "0.6", "0.7", "0.8", "0.9", "1"
        # steps += steps[-2::-1]
        # data = numpy.empty((0, 3))
        # delay = 60
        # for idx, s in enumerate(steps):
        #     K.write("SOUR:VOLT {}".format(s))
        #     time.sleep(0.01)
        #
        #     K.write("TRIG:LOAD:LOOP:DUR {},0,\"defbuffer1\"".format(delay))
        #     time.sleep(0.01)
        #
        #     K.write("INIT")
        #     time.sleep(delay + 1)
        #     K.flushDataToFile("res{}_{}_{}_{}.csv".format(EXPERIMENT, idx, s, PART))
        #     time.sleep(10)
        #     size = int(K.query("TRACe:ACTual? \"defbuffer1\"")[0])
        #     d = K.queryContainer("TRACe:DATA? 1,{}, \"defbuffer1\",SOUR,READ,REL".format(size))
        #     temp = numpy.reshape(d, (-1, 3))
        #     data = numpy.append(data, temp, axis=0)
        # numpy.savetxt("all_res_{}.csv".format(PART), data, delimiter=",")
        # K.close()




