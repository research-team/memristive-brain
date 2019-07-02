import time
import numpy
import visa

from equipment import KeithlySmu

if __name__ == '__main__':
    EXPERIMENT = 10
    rm = visa.ResourceManager()
    K = KeithlySmu('keithly', rm.list_resources()[0], delay=0.3)
    K.default_settings()
    K.resetToDefaultState()
    K.flushDataToFile("reset_memristor_{}.csv".format(EXPERIMENT))

    K.write("SENS:FUNC \"CURR\"")
    time.sleep(0.01)
    K.write("SOUR:FUNC VOLT")
    time.sleep(0.01)
    steps = ["-0.2", "-0.1", "0.1", "0.2", "0.3", "0.4", "0.5", "0.6", "0.7", "0.8", "0.9", "1"]
    steps += steps[-2::-1]
    data = numpy.empty((0, 3))
    delay = 5 * 60
    for idx, s in enumerate(steps):
        K.write("SOUR:VOLT {}".format(s))
        time.sleep(0.01)

        K.write("TRIG:LOAD:LOOP:DUR {},0,\"defbuffer1\"".format(delay))
        time.sleep(0.01)

        K.write("INIT")
        time.sleep(delay + 1)
        K.flushDataToFile("res{}_{}_{}.csv".format(EXPERIMENT, idx, s))
        time.sleep(10)
        size = int(K.query("TRACe:ACTual? \"defbuffer1\"")[0])
        d = K.queryContainer("TRACe:DATA? 1,{}, \"defbuffer1\",SOUR,READ,REL".format(size))
        temp = numpy.reshape(d, (-1, 3))
        data = numpy.append(data, temp, axis=0)
    numpy.savetxt("all_res.csv", data, delimiter=",")
    K.close()