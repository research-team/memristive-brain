import visa
import time
from equipment import KeithlySmu

for STAGE in range(1, 6):
    if __name__ == '__main__':
        EXPERIMENT = "04"
        rm = visa.ResourceManager()
        K = KeithlySmu('keithly', rm.list_resources()[0], delay=0.3)

        K.default_settings()
        if STAGE == 1:
            K.resetToDefaultState()
            K.flushDataToFile("reset_memristor_{}.csv".format(EXPERIMENT))
        start = -1
        stop = 1
        points = 37600  # 37600 - one hour test 75000 - two hour
        delay = 0
        count = 1
        rangeType = 'FIXED'
        failAbort = 'ON'
        dual = 'ON'
        bufferName = '\"defbuffer1\"'
        command = f"SOUR:SWE:VOLT:LIN {start}, {stop}, {points}, {delay}, {count}, {rangeType}, {failAbort}, {dual}, {bufferName}"
        K.write(command)
        K.write('INIT')

        time.sleep(3620)
        K.flushDataToFile('all_res_{}_{}.csv'.format(EXPERIMENT, STAGE))
        K.close()




