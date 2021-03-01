from scipy.signal import find_peaks
from datetime import datetime as dt
import matplotlib.pyplot as plt
from nptdms import TdmsFile
import numpy as np
import argparse
import fnmatch
import os

def file_finder(pattern, path):
    result = []
    for root, dirs, files in os.walk(path):
        for name in files:
            if fnmatch.fnmatch(name, pattern):
                result.append(os.path.join(root, name))
    return result

if __name__ == "__main__": 
	# find tdms files 
	TDMSPath = file_finder('*.tdms', 'Moscow_data')[0]

	# open founded tdms file
	with TdmsFile.open(TDMSPath) as file_tdms:
		grp='input_pins'
		channels=[i.name for i in file_tdms[grp].channels()]
		channel=file_tdms[grp][channels[0]]
		times=channel.time_track()

		time_range_begin = 50
		time_range_end   = 258

		time_index_range_begin = np.where(times >= time_range_begin)[0][0]
		time_index_range_end   = np.where(times <= time_range_end)[-1][-1]
		
		time = times[time_index_range_begin : time_index_range_end]

		fig = plt.figure(figsize=(100,70))
		plt.rcParams.update({'font.size': 32})
		mem1fb =  np.array(file_tdms['input_pins']['mem1fb' ][time_index_range_begin : time_index_range_end])
		peaks_fb, _ = find_peaks(mem1fb, distance = 300, height = 0.8)
		plt.plot(time[peaks_fb], mem1fb[peaks_fb], color = 'red')
		plt.ylabel("mem1fb (V)") # ось абсцисс
		plt.xlabel("Time (s)") # ось ординат
		plt.grid()      # включение отображение сетки

		plt.show()
		#plt.savefig('delta_t/datas_{}_{}.pdf'.format(time_range_begin, time_range_end))
		plt.close('all')
