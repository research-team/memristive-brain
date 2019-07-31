import numpy
import visa

from equipment import KeithlySmu

if __name__ == '__main__':
    rm = visa.ResourceManager()
    K = KeithlySmu('keithly', rm.list_resources()[0], delay=0.3)
    K.write("*RST")
    data = numpy.empty((0, 3))

    # project settings
    experiment_time = 10
    low_time = 1
    high_time = 1
    neutral_voltage = 0.15
    low_voltage = 0.3
    high_voltage = 0.8

    # setup measuremet
    K.write("SENS:FUNC \"CURR\"")

    # setup source
    K.write("SOUR:CONFiguration:LIST:CREate \"pulse\"")
    # setup netural part
    K.write("SOUR:FUNC VOLT")
    K.write("SOUR:VOLT {:.3e}".format(neutral_voltage))
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
    K.write("TRIG:TIM1:STAR:STIM NOTify1")
    K.write("TRIG:TIM2:DEL {:.3e}".format(low_time))
    K.write("TRIG:TIM2:STAR:STIM NOTify2")
    K.write("TRIG:TIM3:DEL {:.3e}".format(high_time))
    K.write("TRIG:TIM3:STAR:STIM NOTify3")
    # 1)buf    clear
    K.create_block("BUFFer:CLEar {}, \"defbuffer1\"")
    # 2)notify    timer1    with whole experiment time
    K.create_block("NOT {}, 1")
    K.write("TRIG:TIM1:STAR:STIM NOTify1")
    # 3)recall netural part (EL 0) from conf list
    K.create_block("CONFig:RECall {}, \"pulse\", 1")
    # 4)SOURCE_OUTPUT         OUTPUT: ON
    K.create_block("SOURce:STATe {}, ON")
    # 5)notify    timer2    with low time
    K.create_block("NOT {}, 2")
    # 6)recall    low    part(EL    1) from conf list
    K.create_block("CONFig:RECall {}, \"pulse\", 2")
    # 7) MEASURE               BUFFER: defbuffer1
    K.create_block("MEASure {}")  # , \"defbuffer1\"")
    # 8) BRANCH_ON_EVENT    EVENT: EVENT_TIMER2     BRANCH_BLOCK: 10
    K.create_block("BRANch:EVENt {}, TIM2, 10")
    # 9) BRANCH_ALWAYS    BRANCH_BLOCK: 7
    K.create_block("BRANch:ALWays {}, 7")
    # 10)recall     high    part(EL     2) from conf list
    K.create_block("CONFig:RECall {}, \"pulse\", 3")
    # 11)notify     timer3     with high time
    K.create_block("NOT {}, 3")
    # 12) MEASURE               BUFFER: defbuffer1
    K.create_block("MEASure {}")  # , \"defbuffer1\"")
    # 13) BRANCH_ON_EVENT     EVENT: EVENT_TIMER3     BRANCH_BLOCK: 15
    K.create_block("BRANch:EVENt {}, TIM3, 15")
    # 14) BRANCH_ALWAYS     BRANCH_BLOCK: 12
    K.create_block("BRANch:ALWays {}, 12")
    # 15) BRANCH_ON_EVENT     EVENT: EVENT_TIMER1     BRANCH_BLOCK: 17
    K.create_block("BRANch:EVENt {}, TIM1, 17")
    # 16) BRANCH_ALWAYS     BRANCH_BLOCK: 5
    K.create_block("BRANch:ALWays {}, 5")
    # 17) SOURCE_OUTPUT     OUTPUT: OFF
    K.create_block("SOURce:STATe {}, OFF")
    K.close()
