import time

import numpy
import visa


class smu:
    def __init__(self, smu, delay=0.1):
        self.__smu__ = smu
        self.__delay = delay
        self.__block_cnt = 1

    def write(self, text):
        self.__smu__.write(text)
        time.sleep(self.__delay)

    def create_block(self, text):
        self.__smu__.write("TRIGger:BLOCk:{}".format(text.format(self.__block_cnt)))
        self.__block_cnt += 1
        time.sleep(self.__delay)

    def close(self):
        self.__smu__.close()

    def query(self, query):
        result = self.__smu__.query(query)
        time.sleep(self.__delay)
        return result


if __name__ == '__main__':
    rm = visa.ResourceManager()
    print(rm.list_resources())
    keithly = rm.open_resource(rm.list_resources()[0])
    print(keithly)
    print(keithly.query("*IDN?"))
    K = smu(keithly)
    K.write("*RST")

    # project settings
    experiment_time = 10
    low_time = 1
    high_time = 1
    netural_voltage = 0.15
    low_voltage = 0.3
    high_voltage = 0.8

    # setup measuremet
    K.write("SENS:FUNC \"CURR\"")

    # setup source
    K.write("SOUR:CONFiguration:LIST:CREate \"pulse\"")
    # setup netural part
    K.write("SOUR:FUNC VOLT")
    K.write("SOUR:VOLT {:.3e}".format(netural_voltage))
    K.write("SOUR:CONFiguration:LIST:STORe \"pulse\"")
    # setup low part
    K.write("SOUR:VOLT {:.3e}".format(low_voltage))
    K.write("SOUR:CONFiguration:LIST:STORe \"pulse\"")
    # setup high part
    K.write("SOUR:VOLT {:.3e}".format(high_voltage))
    K.write("SOUR:CONFiguration:LIST:STORe \"pulse\"")

    # generate custom TriggerFlow
    # 0 a) setup timers
    K.write("TRIG:TIM1:DEL {:.3e}".format(experiment_time))
    K.write("TRIG:TIM1:STAR:STIM NOT1")
    K.write("TRIG:TIM2:DEL {:.3e}".format(low_time))
    K.write("TRIG:TIM2:STAR:STIM NOT2")
    K.write("TRIG:TIM3:DEL {:.3e}".format(high_time))
    K.write("TRIG:TIM3:STAR:STIM NOT3")
    # 1)buf    clear
    K.create_block("BUFFer:CLEar {}, \"defbuffer1\"")
    # 2)notify    timer1    with whole experiment time
    K.create_block("NOT {}, 1")
    # 3)recall netural part (EL 0) from conf list
    K.create_block("CONFig:RECall {}, \"pulse\", 1")
    # 4)SOURCE_OUTPUT         OUTPUT: ON
    K.create_block("SOURce:STATe {}, ON")
    # 5)notify    timer2    with low time
    K.create_block("NOT {}, 2")
    # 6)recall    low    part(EL    1) from conf list
    K.create_block("CONFig:RECall {}, \"pulse\", 2")
    # 7) MEASURE               BUFFER: defbuffer1
    K.create_block("MEASure {}, \"defbuffer1\"")
    # 8) BRANCH_ON_EVENT    EVENT: EVENT_TIMER2     BRANCH_BLOCK: 10
    K.create_block("BRANch:EVENt {}, TIMer2, 10")
    # 9) BRANCH_ALWAYS    BRANCH_BLOCK: 7
    K.create_block("BRANch:ALWays {}, 7")
    # 10)recall     high    part(EL     2) from conf list
    K.create_block("CONFig:RECall {}, \"pulse\", 3")
    # 11)notify     timer3     with high time
    K.create_block("NOT {}, 3")
    # 12) MEASURE               BUFFER: defbuffer1
    K.create_block("MEASure {}, \"defbuffer1\", 1")
    # 13) BRANCH_ON_EVENT     EVENT: EVENT_TIMER3     BRANCH_BLOCK: 15
    K.create_block("BRANch:EVENt {}, TIMer3, 15")
    # 14) BRANCH_ALWAYS     BRANCH_BLOCK: 12
    K.create_block("BRANch:ALWays {}, 12")
    # 15) BRANCH_ON_EVENT     EVENT: EVENT_TIMER1     BRANCH_BLOCK: 17
    K.create_block("BRANch:EVENt {}, TIMer1, 17")
    # 16) BRANCH_ALWAYS     BRANCH_BLOCK: 5
    K.create_block("BRANch:ALWays {}, 5")
    # 17) SOURCE_OUTPUT     OUTPUT: OFF
    K.create_block("SOURce:STATe {}, OFF")

    # print(K.query("TRIGger:BLOCk:LIST?"))
    # start experiment
    K.write("INIT")
    time.sleep(experiment_time + 1)
    data = numpy.empty((0, 3))
    size = int(keithly.query("TRACe:ACTual? \"defbuffer1\""))
    print(size)
    d = keithly.query_ascii_values("TRACe:DATA? 1,{}, \"defbuffer1\",SOUR,READ,REL".format(size),
                                   container=numpy.array)
    temp = numpy.reshape(d, (-1, 3))
    data = numpy.append(data, temp, axis=0)
    numpy.savetxt("test_pulse.csv", temp, delimiter=",")
    K.close()
