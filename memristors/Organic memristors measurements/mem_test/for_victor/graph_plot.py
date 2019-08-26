import pylab as plt
import numpy as np

def plot(points):
    plt.figure(figsize=(16,9))
#    plt.plot(range(len(voltages)), voltages, label='T')
    points_dig= []
    for i in points:
        try:
            if (float(i) > 2 or float(i) < -2):
                continue
            points_dig.append(float(i))
        except ValueError:
            print("error")
    plt.ylim(-2, 2)
    plt.plot(points_dig, label='T')
    plt.legend()
    plt.show()

def read_csv(path):
    volts = []
    with open(path) as file:
        i = 0
        for data_row in file.readlines():
            volt = data_row.split(",")
            i+=1
#            if i == 100:
 #               return volt
            volts += volt
    
    return volts

if __name__ == "__main__":
    path = "./data_memristor_.csv"
    volts = read_csv(path)
#    print(len(volts))
    plot(volts)
    # plot(volt, current, t)
