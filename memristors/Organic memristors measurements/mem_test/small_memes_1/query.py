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
memnum="8_4"
if not os.path.exists("C:\\Users\\itis\\Documents\\memristive-brain\\memristors\\Organic memristors measurements\\mem_test\\small_memes\\mem{}".format(memnum)):
    os.mkdir("C:\\Users\\itis\\Documents\\memristive-brain\\memristors\\Organic memristors measurements\\mem_test\\small_memes\\mem{}".format(memnum))

df.to_csv("C:\\Users\\itis\\Documents\\memristive-brain\\memristors\\Organic memristors measurements\\mem_test\\small_memes\\mem{}\\small_memr.csv".format(memnum), index=False)
