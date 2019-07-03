import visa
import numpy
import pandas as pd
import os
rm = visa.ResourceManager()
k = rm.open_resource(rm.list_resources()[0])
#50000 * 2 =100000
size = int(k.query("TRACe:ACTual? \"defbuffer1\""))
d = k.query_ascii_values("TRACe:DATA? 1,{}, \"defbuffer1\",SOUR,READ,REL".format(size), container=numpy.array)
k.close()
temp = numpy.reshape(d, (-1, 3))
df = pd.DataFrame(temp, columns=["s", "m", "t"])
df.to_csv("newmemr5.csv".format(os.curdir), index=False)
