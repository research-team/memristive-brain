import time

import numpy
import visa

if __name__ == '__main__':
    rm = visa.ResourceManager()
    print(rm.list_resources())
    keithly = rm.open_resource(rm.list_resources()[0])
    print(keithly)
    print(keithly.query("*IDN?"))
    # keithly.write("*RST")
    # time.sleep(0.01)
    print("RES RESET")

    keithly.write("SENS:FUNC \"CURR\"")
    time.sleep(0.1)
    keithly.write("SENS:CURR:UNIT OHM")
    time.sleep(0.1)

    keithly.write("SOUR:FUNC VOLT")
    time.sleep(0.1)
    keithly.write("SOUR:VOLT -0.2")
    time.sleep(0.1)

    keithly.write("TRIG:LOAD:LOOP:DUR 1800,0,\"defbuffer2\"")
    time.sleep(0.1)

    # keithly.write("INIT")
    # time.sleep(1801)
    size = int(keithly.query("TRACe:ACTual? \"defbuffer2\""))
    print("res size:{}".format(size))
    data = numpy.empty((0, 3))
    d = keithly.query_ascii_values("TRACe:DATA? 1,{}, \"defbuffer2\",SOUR,READ,REL".format(size),
                                   container=numpy.array)
    temp = numpy.reshape(d, (-1, 3))
    data = numpy.append(data, temp, axis=0)
    print("DONE!!!!")
    # keithly.write("SENS:FUNC \"CURR\"")
    # time.sleep(0.01)
    # steps = ["-0.2", "-0.1", "0.1", "0.2", "0.3", "0.4", "0.5", "0.6", "0.7", "0.8", "0.9", "1"]
    # data = numpy.empty((0, 3))
    # for idx, s in enumerate(steps):
    #     print("STEP {} init".format(s))
    #     keithly.write("TRIG:LOAD:LOOP:DUR 5,0,\"defbuffer1\"".format(s))
    #     time.sleep(0.01)
    #     keithly.write("SOUR:FUNC VOLT")
    #     time.sleep(0.01)
    #     keithly.write("SOUR:VOLT {}".format(s))
    #     time.sleep(0.01)
    #     keithly.write("INIT")
    #     time.sleep(6)
    #     size = int(keithly.query("TRACe:ACTual?"))
    #     print(size)
    #     d = keithly.query_ascii_values("TRACe:DATA? 1,{}, \"defbuffer1\",SOUR,READ,REL".format(size),
    #                                    container=numpy.array)
    #     temp = numpy.reshape(d, (-1, 3))
    #     data = numpy.append(data, temp, axis=0)
    #     print("DONE step {}!!!!".format(s))
    # print("DONE step!!!!")
    numpy.savetxt("res.csv", data, delimiter=",")
    # print(data)
    # size = int(keithly.query("TRACe:ACTual?"))
    # print(size)
    # data = keithly.query_ascii_values("TRACe:DATA? 1,{}, \"defbuffer1\",SOUR,READ,REL".format(size),
    #                                   container=numpy.array)
    # data = numpy.reshape(data, (-1, 3))
    # print(data[:])
