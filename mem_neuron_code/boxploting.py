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

    # show input channels with matplotlib
    fig = plt.figure(figsize=(100,70))
    plt.rcParams.update({'font.size': 64})
    difer = []

    ####################################################################################################
    #111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
    ####################################################################################################

    # choose the time period of interest in the experiment (seconds)
    time_period_begin = 1010.55
    time_period_end   = 1023.4 
    time_index_range_begin = np.where(times >= time_period_begin)[0][0]
    time_index_range_end   = np.where(times <= time_period_end)[-1][-1]
    time = times[time_index_range_begin : time_index_range_end]

    mem1fb = np.array(file_tdms[grp]['mem1fb'][time_index_range_begin : time_index_range_end])
    peaks_fb, _ = find_peaks(mem1fb, distance = 1, height = 0.8)

    difr = np.diff(peaks_fb)
    
    countxjk_array = []
    for countxjk, xjk in enumerate(difr):
    	if xjk > 100:
    		countxjk_array.append(countxjk + 1)
    		
    test_peaks = np.split(peaks_fb, countxjk_array)

    mean_index = []
    mean_value = []
    for test_peak in test_peaks:
    	mean_index.append(int(np.mean(test_peak)))
    	mean_value.append(np.mean(mem1fb[test_peak]))
    	
    difer.append(abs(np.diff(mean_value)))

    ####################################################################################################
    #222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222
    ####################################################################################################

    time_period_begin = 1103.45
    time_period_end   = 1108.6
    time_index_range_begin = np.where(times >= time_period_begin)[0][0]
    time_index_range_end   = np.where(times <= time_period_end)[-1][-1]
    time = times[time_index_range_begin : time_index_range_end]

    mem1fb = np.array(file_tdms[grp]['mem1fb'][time_index_range_begin : time_index_range_end])
    peaks_fb, _ = find_peaks(mem1fb, distance = 1, height = 0.8)

    difr = np.diff(peaks_fb)
    
    countxjk_array = []
    for countxjk, xjk in enumerate(difr):
    	if xjk > 100:
    		countxjk_array.append(countxjk + 1)
    		
    test_peaks = np.split(peaks_fb, countxjk_array)

    mean_index = []
    mean_value = []
    for test_peak in test_peaks:
    	mean_index.append(int(np.mean(test_peak)))
    	mean_value.append(np.mean(mem1fb[test_peak]))
    	
    difer.append(abs(np.diff(mean_value)))
    

    ####################################################################################################
    #333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333
    ####################################################################################################

    time_period_begin = 1137.22      #351.7
    time_period_end   = 1138.62   #391.3
    time_index_range_begin = np.where(times >= time_period_begin)[0][0]
    time_index_range_end   = np.where(times <= time_period_end)[-1][-1]
    time = times[time_index_range_begin : time_index_range_end]

    mem1fb = np.array(file_tdms[grp]['mem1fb'][time_index_range_begin : time_index_range_end])
    peaks_fb, _ = find_peaks(mem1fb, distance = 1, height = 0.8)

    difr = np.diff(peaks_fb)
    
    countxjk_array = []
    for countxjk, xjk in enumerate(difr):
    	if xjk > 100:
    		countxjk_array.append(countxjk + 1)
    		
    test_peaks = np.split(peaks_fb, countxjk_array)

    mean_index = []
    mean_value = []
    for test_peak in test_peaks:
    	mean_index.append(int(np.mean(test_peak)))
    	mean_value.append(np.mean(mem1fb[test_peak]))
    	
    difer.append(abs(np.diff(mean_value)))

    plt.boxplot(difer)
    plt.show()
    exit()

    ####################################################################################################
    #444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444
    ####################################################################################################

    time_period_begin = 360.3
    time_period_end   = 391
    time_index_range_begin = np.where(times >= time_period_begin)[0][0]
    time_index_range_end   = np.where(times <= time_period_end)[-1][-1]
    time = times[time_index_range_begin : time_index_range_end]

    mem1fb = np.array(file_tdms[grp]['mem1fb'][time_index_range_begin : time_index_range_end])
    peaks_fb, _ = find_peaks(mem1fb, distance = 300, height = 0.8)

    difer_4 = abs(np.diff(mem1fb[peaks_fb]))
    difer.append(difer_4)

    plt.boxplot(difer)
    plt.show()


    
