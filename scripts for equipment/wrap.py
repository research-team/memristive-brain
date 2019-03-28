import oscilloscope as dev
import time
import datetime

data = []
i=0

READ_TIME = 5
#time of capturing data(sec)

start_time = time.mktime(datetime.datetime.now().timetuple()) 
print('start_time', start_time, '\n')

while time.mktime(datetime.datetime.now().timetuple())-start_time < READ_TIME:
	data.append(dev.collect())
	#cathed data

	s = time.mktime(datetime.datetime.now().timetuple())-start_time

	print('diff_time', s)
	print('snap', i, '\n')
	i+=1

