import numpy
import visa
from datetime import datetime as dt
from equipment import KeithlySmu
import os
if __name__ == '__main__':
    rm = visa.ResourceManager()
    K = KeithlySmu('keithly', rm.list_resources()[0], delay=0.3)

    date=dt.now().strftime("%d#%m#%Y")
    datetime=dt.now().strftime("%d#%m#%Y#%H#%M#%S")
    memr_number=6
    step_time=90
    data = numpy.empty((0, 3))

    size = int(K.query("TRACe:ACTual? \"defbuffer1\"")[0])
    print(size)
    print(K.query("TRACe:DATA? 1,{}, \"defbuffer1\",SOUR,READ,REL".format(10)))
    d = K.query("TRACe:DATA? 1,{}, \"defbuffer1\",SOUR,READ,REL".format(size))

    temp = numpy.reshape(d, (-1, 3))

    if not os.path.exists("memr_{}_at_{}".format(memr_number,date)):
        os.mkdir("memr_{}_at_{}_res-0.2".format(memr_number,date))
    numpy.savetxt("memr_{}_at_{}_res-0.2/memr-{}_{}_steptime_{}_res-0.2.csv".format(memr_number,date,memr_number,datetime,step_time), temp, delimiter=",")

    K.close()