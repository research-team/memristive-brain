import visa
from equipment import KeithlySmu

if __name__ == '__main__':
    EXPERIMENT = 3
    rm = visa.ResourceManager()
    K = KeithlySmu('keithly', rm.list_resources()[0], delay=0.3)

    K.default_settings()
    K.resetToDefaultState()
    K.flushDataToFile("reset_memristor_{}.csv".format(EXPERIMENT))
    start = 0
    stop = 1
    points = 1000
    delay = 0
    count = 1
    rangeType = 'FIXED'
    failAbort = 'OFF'
    dual = 'ON'
    bufferName = 'defbuffer1'
    command = f"SOUR:SWE:VOLT:LIN {start}, {stop}, {points}, {delay}," \
              f" {count}, {rangeType}, {failAbort}, {dual}, {bufferName}"
    K.query(
        command
    )
    K.flushDataToFile('all_res_{}.csv'.format(EXPERIMENT))
    K.close()
