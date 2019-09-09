import visa
import time
from equipment import KeithlySmu

for PART in range(1, 3):
    if __name__ == '__main__':
        EXPERIMENT, STAGE = "03", 1
        rm = visa.ResourceManager()
        K = KeithlySmu('keithly', rm.list_resources()[0], delay=0.3)

        K.default_settings()
        if PART == 1:
            K.resetToDefaultState()
            K.flushDataToFile("reset_line_{}.csv".format(EXPERIMENT))
            start = 0
            stop = 1
        else:
            start = 0
            stop = -1
        points = 12500  # 37600 - one hour test 75000 - two hour
        delay = 0
        count = 1
        rangeType = 'FIXED'
        failAbort = 'ON'
        dual = 'ON'
        bufferName = '\"defbuffer1\"'
        command = f"SOUR:SWE:VOLT:LIN {start}, {stop}, {points}, {delay}, {count}, {rangeType}, {failAbort}, {dual}, {bufferName}"
        K.write(command)
        K.write('INIT')

        time.sleep(1205)
        K.flushDataToFile('line_res{}_{}__{}.csv'.format(EXPERIMENT, PART, STAGE))
        K.close()




