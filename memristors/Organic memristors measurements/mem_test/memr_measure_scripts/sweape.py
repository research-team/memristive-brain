import visa
from equipment import KeithlySmu

if __name__ == '__main__':
    EXPERIMENT, HOURS = 3, 2
    rm = visa.ResourceManager()
    K = KeithlySmu('keithly', rm.list_resources()[0], delay=0.3)

    K.default_settings()
    K.resetToDefaultState()
    K.flushDataToFile("reset_memristor_{}.csv".format(EXPERIMENT))
    start = -0.2
    stop = 1
    points = 75000 # 37600 - one hour test 75000 - two hour
    delay = 0
    count = 1
    rangeType = 'FIXED'
    failAbort = 'ON'
    dual = 'ON'
    bufferName = '\"defbuffer1\"'
    command = f"SOUR:SWE:VOLT:LIN {start}, {stop}, {points}, {delay}, {count}, {rangeType}, {failAbort}, {dual}, {bufferName}"
    K.write(
      command
    )
    K.write('INIT')
    # Use this commands manualy
    # K.flushDataToFile('all_res_{}_{}.csv'.format(EXPERIMENT, HOURS))
    # K.close()
