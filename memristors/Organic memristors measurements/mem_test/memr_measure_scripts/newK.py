import time
import numpy
import visa

from equipment import KeithlySmu

if __name__ == '__main__':
    EXPERIMENT = 4
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
        K.write("STEP {} init".format(s))
        K.write("SOUR:VOLT {}".format(s))
        time.sleep(0.01)

        K.write("TRIG:LOAD:LOOP:DUR {},0,\"defbuffer1\"".format(delay))
        time.sleep(0.01)

        K.write("INIT")
        time.sleep(delay + 1)
        size = int(K.query("TRACe:ACTual? \"defbuffer1\""))
        K.write(size)
        d = K.query("TRACe:DATA? 1,{}, \"defbuffer1\",SOUR,READ,REL".format(size))
        temp = numpy.reshape(d, (-1, 3))
        data = numpy.append(data, temp, axis=0)
        numpy.savetxt("res{}_{}.csv".format(idx, s), temp, delimiter=",")
        K.write("DONE step {}!!!!".format(s))
    numpy.savetxt("all_res.csv", data, delimiter=",")
    K.flushDataToFile('all_res_{}.csv'.format(EXPERIMENT))
    K.close()