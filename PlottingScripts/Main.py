import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import csv
import sys

if __name__ == '__main__':

    filepathSinus = "C:\\Memristive_brain\\Data_for_analyse\\99\\SinusP2msFirst.csv"
    filepathTriangle = "C:\\Memristive_brain\\Data_for_analyse\\99\\TriangleP2msFirst.csv"
    filepathRectangle = "C:\\Memristive_brain\\Data_for_analyse\\99\\Flat99,9ver3First.csv"
    filepathlearning ="C:\\Memristive_brain\\Data_for_analyse\\Hysteresis\\KzE02_hysteresis.csv"
    resistor = 100000

    dataFrame = pd.read_csv(filepathlearning, names = ['Time', 'Ch1_vol', 'Ch2_vol'])
    dataFrame = dataFrame.iloc[::100, :]

    # for
    # dataFrame['Ch1_vol'] = dataFrame['Ch1_vol'].apply(lambda x: -x if x <= 0 else x)
    # #N = 2
    # #dataFrame['Ch1_vol'] = dataFrame['Ch1_vol'].apply(lambda x: 0.1 if x <= 0.1 else x)
    # dataFrame['Ch1_vol'] = dataFrame.Ch1_vol[::-1].shift(-1).rolling(N, center=True, min_periods=1).mean().values[::-1]
    # dataFrame['Ch2_vol'] = dataFrame.Ch2_vol[::-1].shift(-1).rolling(N, center=True, min_periods=1).mean().values[::-1]


    #dataFrame['Ch1_vol'] = dataFrame['Ch1_vol'].apply(lambda x: 0.0000001 if x == 0 else x)


    plt.figure(figsize=(20,7))
    # x = dataFrame['Time']
    x = dataFrame['Ch2_vol']
    #y = dataFrame['Ch2_vol']/(dataFrame['Ch1_vol']/resistor)  # Memristor resistance
    #y /=1000000
    #y = (dataFrame['Ch1_vol']/resistor)/dataFrame['Ch2_vol']  # Проводимость
    y = dataFrame['Ch1_vol']/resistor #amperage
    #y = dataFrame['Ch2_vol'] #General voltage
    #y = dataFrame['Ch1_vol'] #resistor voltage

    plt.plot(x,y)
    # plt.ylabel('Resistance, MOm')
    # plt.xlabel('Time, sec')

    # plt.ylabel('Amperage')
    # plt.xlabel('Voltage')
    plt.show()

    # try: #Parsing tab-delmited txt to csv
    #     with open(r"C:\\Memristive_brain\\Data_for_analyse\\99\\SinusP2ms.txt", 'r', newline='\n') as in_f, \
    #             open(r"C:\\Memristive_brain\\Data_for_analyse\\99\\SinusP2ms.csv", 'w', newline='\n') as out_f:
    #         reader = csv.reader(in_f, delimiter='\t')
    #         writer = csv.writer(out_f, delimiter=',')
    #         for li in reader:
    #             li = li[0].split()
    #             try:
    #                 writer.writerow([li[0], li[1], li[2]])
    #             except IndexError:
    #                 raise NotImplementedError
    #
    # except IOError as err:
    #     print(err)




    # h = 0.06
    # def top(x):
    #     global h
    #     if x < 0.06:
    #         x = h
    #     else:
    #         h = x
    #     return x
    # dataFrame['Ch1_vol'] = dataFrame['Ch1_vol'].apply(lambda x: top(x) )