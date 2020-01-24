import time

import numpy
import visa
from equipment import KeithlySmu, Lgr

if __name__ == '__main__':
    l = Lgr('keithly')
    rm = visa.ResourceManager()
    K = KeithlySmu('keithly', rm.list_resources()[0], delay=0.3)

    # setup measuremet
    K.write("SENS:FUNC \"CURR\"")
    K.write("SENS:CURR:RANG 1E-3")
    # setup source
    K.write("SOUR:CONFiguration:LIST:CREate \"pulse1\"")
    # setup netural part
    K.write("SOUR:FUNC VOLT")
    K.write("SOUR:VOLT:ILIM 0.001")
    ind = [i * 0.1 for i in range(10)]
    ind += [i * 0.1 for i in range(10, -3, -1)]
    ind += [-0.1, 0]

    for i in ind:
        K.write("SOUR:VOLT {:.3e}".format(i))
        K.write("SOUR:CONFiguration:LIST:STORe \"pulse1\"")

    K.close()
