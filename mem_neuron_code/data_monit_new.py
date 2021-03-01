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
        
        time_range_begin_for_loop = 0
        time_range_end_for_loop   = 10520

        for time_range in np.arange(time_range_begin_for_loop, time_range_end_for_loop, 0.5):
            # create figure 
            fig = plt.figure(figsize=(300,70))
            plt.rcParams.update({'font.size': 32})
            
            time_range_begin = time_range
            time_range_end   = time_range + 0.5

            time_index_range_begin = np.where(times >= time_range_begin)[0][0]
            time_index_range_end   = np.where(times <= time_range_end)[-1][-1]

            time = times[time_index_range_begin : time_index_range_end]

            inp1=np.array(file_tdms[grp]['inp1'][time_index_range_begin : time_index_range_end]) 
            fig.add_subplot(5,1,1)
            plt.plot(time,inp1)
            plt.title("Voltage versus Time") # заголовок
            plt.ylabel("V_in1 (V)") # ось абсцисс
            plt.xlabel("Time (s)") # ось ординат
            plt.grid()      # включение отображение сетки

            inp2=np.array(file_tdms[grp]['inp2'][time_index_range_begin : time_index_range_end])
            fig.add_subplot(5,1,2)
            plt.plot(time,inp2)
            #plt.title("Voltage versus Time") # заголовок
            plt.ylabel("V_in2 (V)") # ось абсцисс
            plt.xlabel("Time (s)") # ось ординат
            plt.grid()      # включение отображение сетки

            out=np.array(file_tdms[grp]['out'][time_index_range_begin : time_index_range_end])
            
            fig.add_subplot(5,1,3)
            plt.plot(time, out)
            #plt.title("Voltage versus Time") # заголовок
            plt.ylabel("V_out (V)") # ось абсцисс
            plt.xlabel("Time (s)") # ось ординат
            plt.grid()      # включение отображение сетки
            plt.ylim([-1, 5])
            
            fig.add_subplot(5,1,4)
            plt.plot(time, inp1, time, out)
            #plt.title("Voltage versus Time") # заголовок
            plt.ylabel("V_inp1_out (V)") # ось абсцисс
            plt.xlabel("Time (s)") # ось ординат
            plt.grid()      # включение отображение сетки
            plt.ylim([-1, 5])        

            mem1fb=np.array(file_tdms[grp]['mem1fb'][time_index_range_begin : time_index_range_end])

            fig.add_subplot(5,1,5)
            plt.plot(time, mem1fb)
            #plt.title("Voltage versus Time") # заголовок
            plt.ylabel("V_mem1fb (V)") # ось абсцисс
            plt.xlabel("Time (s)") # ось ординат
            plt.grid()      # включение отображение сетки
            #plt.ylim([-1, 2])

            plt.savefig('datas_50_258/datas_{}_{}.pdf'.format(time_range_begin, time_range_end))
            plt.close('all')
