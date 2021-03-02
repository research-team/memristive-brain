from datetime import datetime as dt
from scipy.signal import find_peaks
import matplotlib.pyplot as plt
from nptdms import TdmsFile
import numpy as np
import argparse
import fnmatch
import os

# func to find files in folder
def file_finder(pattern, path):
    result = []
    for root, dirs, files in os.walk(path):
        for name in files:
            if fnmatch.fnmatch(name, pattern):
                result.append(os.path.join(root, name))
    return result

# construct the argument parse and parse the arguments
ap = argparse.ArgumentParser()
ap.add_argument("-i", "--input", type = str, required = True,
    help="path to folder with tdms file")
ap.add_argument("-o", "--output", type = str, required = False,
    help="output folder")
args = vars(ap.parse_args())

# find tdms file in folder
TDMSPath = file_finder('*.tdms', args['input'])[0]

# open founded tdms file
with TdmsFile.open(TDMSPath) as file_tdms:
    # find all input channels in tdms and grap the time channel
    grp='input_pins'
    channels=[i.name for i in file_tdms[grp].channels()]
    channel=file_tdms[grp][channels[0]]
    times=channel.time_track()

    # choose the time period of interest in the experiment (seconds)
    time_period_begin = 1138.7      #351.7
    time_period_end   = 1141.5   #391.3
    time_index_range_begin = np.where(times >= time_period_begin)[0][0]
    time_index_range_end   = np.where(times <= time_period_end)[-1][-1]
    time = times[time_index_range_begin : time_index_range_end]

    # show input channels with matplotlib
    fig = plt.figure(figsize=(200,70))
    plt.rcParams.update({'font.size': 64})

    '''
    fig.add_subplot(2, 1, 1)
    inp1 = np.array(file_tdms[grp]['inp1'][time_index_range_begin : time_index_range_end])
    out  = np.array(file_tdms[grp]['out' ][time_index_range_begin : time_index_range_end]) 
    plt.plot(time, inp1, time, out)
    plt.ylabel('V_inp1_out (V)') # ось абсцисс
    plt.xlabel('Time (s)')       # ось ординат
    plt.grid()                   # включение отображение сетки

    fig.add_subplot(2, 1, 2)
    mem1fb = np.array(file_tdms[grp]['mem1fb'][time_index_range_begin : time_index_range_end]) 
    plt.plot(time, mem1fb)
    plt.ylabel('V_mem1fb (V)')   # ось абсцисс
    plt.xlabel('Time (s)')       # ось ординат
    plt.grid()                   # включение отображение сетки
    '''

    inp1 = np.array(file_tdms[grp]['inp1'][time_index_range_begin : time_index_range_end])
    out  = np.array(file_tdms[grp]['out' ][time_index_range_begin : time_index_range_end])
    # find delta_t on selected time period between inp1 and out
    input_time_start_high_voltage = []
    input_val_start_high_voltage  = []
    for c, i in enumerate(inp1):
        if c == 0:
            first_point = i
            continue
        second_point = i
        if second_point - first_point > 1:
            input_time_start_high_voltage.append(time[c])
            input_val_start_high_voltage.append(inp1[c])
        first_point = second_point

    j = 0
    input_val_start_high_voltage_n = []
    input_time_start_high_voltage_n = []
    for xk, yk in zip(input_val_start_high_voltage, input_time_start_high_voltage):
            if j % 2 != 0:
                input_val_start_high_voltage_n.append(xk)
                input_time_start_high_voltage_n.append(yk)
            j += 1

    output_time_start_high_voltage = []
    output_val_start_high_voltage  = []
    for c, i in enumerate(out):
        if c == 0:
            first_point = i
            continue
        second_point = i
        if second_point - first_point > 1: #and c % 2 != 0:
            output_time_start_high_voltage.append(time[c])
            output_val_start_high_voltage.append(out[c])
        first_point = second_point

    fig.add_subplot(3, 1, 1)
    plt.plot(time, inp1)
    plt.plot(input_time_start_high_voltage_n, input_val_start_high_voltage_n, 'x', color = 'black')
    plt.plot(time, out)
    plt.plot(output_time_start_high_voltage, output_val_start_high_voltage, 'x', color = 'black')

    #print(input_time_start_high_voltage, output_time_start_high_voltage)
    for x, y in  zip(input_time_start_high_voltage_n, output_time_start_high_voltage):
        print(y - x)

    fig.add_subplot(3, 1, 2)
    mem1fb = np.array(file_tdms[grp]['mem1fb'][time_index_range_begin : time_index_range_end])
    peaks_fb, _ = find_peaks(mem1fb, distance = 1, height = 0.8)
    difr = np.diff(peaks_fb)
    
    countxjk_array = []
    for countxjk, xjk in enumerate(difr):
    	if xjk > 500:
    		countxjk_array.append(countxjk + 1)
    		
    test_peaks = np.split(peaks_fb, countxjk_array)

    mean_index = []
    mean_value = []
    for test_peak in test_peaks:
    	mean_index.append(int(np.mean(test_peak)))
    	mean_value.append(np.median(mem1fb[test_peak]))
    	
    #print(mean_index)
    #print(mean_value)
    
    #print(peaks_fb)
    plt.plot(time, mem1fb)
    plt.plot(time[mean_index], mean_value, 'x', color = 'red')

    fig.add_subplot(3, 1, 3)
    difer = abs(np.diff(mean_value))
    plt.boxplot(difer)

    #plt.show()
    plt.savefig('delta_t/datas_{}_{}.pdf'.format(time_period_begin, time_period_end))
    plt.close('all')
