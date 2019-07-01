import visa

from equipment import KeithlySmu

if __name__ == '__main__':
    EXPERIMENT = 3
    rm = visa.ResourceManager()
    K = KeithlySmu('keithly', rm.list_resources()[0], delay=0.3)

    K.default_settings()
    K.resetToDefaultState()
    K.flushDataToFile("reset_memristor_{}.csv".format(EXPERIMENT))

    K.query(
        "SOUR:SWE:VOLT:LIN {start}, {stop}, {points}, {delay}, {count}, {rangeType}, {failAbort}, {dual}, {bufferName}"
        .format(0, 1, 1000, 0, 1, 'FIXED', 'OFF', 'ON', 'defbuffer1'))
    K.flushDataToFile('all_res_{}.csv'.format(EXPERIMENT))
    K.close()
