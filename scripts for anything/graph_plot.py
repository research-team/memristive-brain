import pylab as plt
import numpy as np
    
def plot(points):
    plt.figure(figsize=(16,9))
    rangee = {'top': 100, 'bot': -100}
    
    #plt.ylim(rangee['bot'], rangee['top'])

    for line in points:
        plt.plot(line)

    plt.legend()
    plt.show()

def read_csv(path):
    # chan1, chan2, chan3, chan4 = [],[],[],[]
    chan1 = []
    with open(path) as file:
        i = 0
        for data_row in file.readlines():
            c1 = data_row.split(',')
            for x in c1[1:]:
                try:
                    chan1.append(float(x))
                except ValueError:
                    print(x)
    return chan1

if __name__ == "__main__":
    RESISTENCE = 36.6
    LOW_LEVEL = 4
    OVERAGE_BOTTOM = 9999

    path = ['./chan1.txt', './chan2.txt']
    chan1 = read_csv(path[0])
    chan2 = read_csv(path[1])
    chan3 = []

    for x in chan1:
        if x < LOW_LEVEL and x > 0 and x < OVERAGE_BOTTOM:
            OVERAGE_BOTTOM = x
    for x in range(len(chan1)):
        if chan1[x] < LOW_LEVEL:
            chan1[x] = OVERAGE_BOTTOM
    for i in range(len(chan1)):
        if (chan1[i] == OVERAGE_BOTTOM):
            chan3.append(RESISTENCE * OVERAGE_BOTTOM / chan2[i] )

    plot([chan1, chan2, chan3])
