import time

import numpy
import visa


class smu:
    def __init__(self, smu, delay=0.1):
        self.__smu__ = smu
        self.__delay = delay

    def write(self, text):
        self.__smu__.write(text)
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

    # setup source
    K.write("SOUR:CONFiguration:LIST:CREate \"pulse\"")
    # setup netural part
    K.write("SOUR:FUNC VOLT")
    K.write("SOUR:VOLT {:.3f}".format(netural_voltage))
    K.write("SOUR:CONFiguration:LIST:STORe \"pulse\"")
    # setup low part
    K.write("SOUR:VOLT {:.3f}".format(low_voltage))
    K.write("SOUR:CONFiguration:LIST:STORe \"pulse\"")
    # setup high part
    K.write("SOUR:VOLT {:.3f}".format(high_voltage))
    K.write("SOUR:CONFiguration:LIST:STORe \"pulse\"")

    # generate custom TriggerFlow
    # 0 a) setup timers
    K.write("TRIG:TIM1:DEL {:.3f}".format(experiment_time))
    K.write("TRIG:TIM1:STAR:STIM NOT1")
    K.write("TRIG:TIM2:DEL {:.3f}".format(low_time))
    K.write("TRIG:TIM2:STAR:STIM NOT2")
    K.write("TRIG:TIM3:DEL {:.3f}".format(high_time))
    K.write("TRIG:TIM3:STAR:STIM NOT3")
    # 1)buf    clear
    K.write("TRIGger:BLOCk:BUFFer:CLEar 1, \"defbuffer1\"")
    # 2)notify    timer1    with whole experiment time
    K.write("TRIG:BLOC:NOT 2, 1")
    # 3)recall netural part (EL 0) from conf list
    K.write("TRIGger:BLOCk:CONFig:RECall 3, \"pulse\", 1")
    # 4)SOURCE_OUTPUT         OUTPUT: ON
    K.write("TRIGger:BLOCk:SOURce:STATe 4, ON")
    # 5)notify    timer2    with low time
    K.write("TRIG:BLOC:NOT 5, 2")
    # 6)recall    low    part(EL    1) from conf list
    K.write("TRIGger:BLOCk:CONFig:RECall 6, \"pulse\", 2")
    # 7) MEASURE               BUFFER: defbuffer1
    K.write("TRIGger:BLOCk:MEASure 7, \"defbuffer1\"")
    # 8) BRANCH_ON_EVENT    EVENT: EVENT_TIMER2     BRANCH_BLOCK: 10
    K.write("TRIGger:BLOCk:BRANch:EVENt 8, TIMer2, 10")
    # 9) BRANCH_ALWAYS    BRANCH_BLOCK: 7
    K.write("TRIGger:BLOCk:BRANch:ALWays 9, 7")
    # 10)recall     high    part(EL     2) from conf list
    K.write("TRIGger:BLOCk:CONFig:RECall 10, \"pulse\", 3")
    # 11)notify     timer3     with high time
    K.write("TRIG:BLOC:NOT 11, 3")
    # 12) MEASURE               BUFFER: defbuffer1
    K.write("TRIGger:BLOCk:MEASure 12, \"defbuffer1\", 1")
    # 13) BRANCH_ON_EVENT     EVENT: EVENT_TIMER3     BRANCH_BLOCK: 15
    K.write("TRIGger:BLOCk:BRANch:EVENt 13, TIMer3, 15")
    # 14) BRANCH_ALWAYS     BRANCH_BLOCK: 12
    K.write("TRIGger:BLOCk:BRANch:ALWays 14, 12")
    # 15) BRANCH_ON_EVENT     EVENT: EVENT_TIMER1     BRANCH_BLOCK: 17
    K.write("TRIGger:BLOCk:BRANch:EVENt 15, TIMer1, 17")
    # 16) BRANCH_ALWAYS     BRANCH_BLOCK: 5
    K.write("TRIGger:BLOCk:BRANch:ALWays 16, 5")
    # 17) SOURCE_OUTPUT     OUTPUT: OFF
    K.write("TRIGger:BLOCk:SOURce:STATe 17, OFF")

    #print(K.query("TRIGger:BLOCk:LIST?"))
    #start experiment
    K.write("INIT")
    time.sleep(experiment_time+1)
    data = numpy.empty((0, 3))
    size = int(keithly.query("TRACe:ACTual? \"defbuffer1\""))
    print(size)
    d = keithly.query_ascii_values("TRACe:DATA? 1,{}, \"defbuffer1\",SOUR,READ,REL".format(size),
                                   container=numpy.array)
    temp = numpy.reshape(d, (-1, 3))
    data = numpy.append(data, temp, axis=0)
    numpy.savetxt("test_pulse.csv", temp, delimiter=",")
    K.close()
