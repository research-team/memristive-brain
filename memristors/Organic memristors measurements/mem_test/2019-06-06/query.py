import visa
import numpy
import pandas as pd
import os
rm = visa.ResourceManager()
k = rm.open_resource(rm.list_resources()[0])
size = int(k.query("TRACe:ACTual? \"defbuffer1\""))
d = k.query_ascii_values("TRACe:DATA? 1,{}, \"defbuffer1\",SOUR,READ,REL".format(size), container=numpy.array)
k.close()
temp = numpy.reshape(d, (-1, 3))
df = pd.DataFrame(temp, columns=["s", "m", "t"])
df.to_csv("..\\06.06.19\\resistor_time_test.csv".format(os.curdir), index=False)
