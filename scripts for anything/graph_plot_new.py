import pylab as plt
import numpy as np
from mpl_toolkits.mplot3d import Axes3D


def plot(points):
    plt.figure(figsize=(16, 9))
    rangee = {'top': 10, 'bot': 0}

    plt.ylim(rangee['bot'], rangee['top'])

    for line in points:
        plt.plot(line)

    plt.legend()
    plt.show()


def plot3d(points, spikes):
    fig = plt.figure(figsize=(16, 9))
    ax = fig.gca(projection='3d')

    for i in range(len(points)):
        print(deltaResist(points[i][1000:]))
        ax.plot(
            deltaResist(points[i][1000:]),
            range(len(points[i][1000:])),
            spikes[i][1000:len(points[i])]
        )

    ax.legend()
    plt.show()


def read_csv(path):
    chan1 = []
    with open(path) as file:
        # i = 0
        for data_row in file.readlines():
            c1 = data_row.split(',')
            for x in c1[1:]:
                try:
                    chan1.append(float(x))
                except ValueError:
                    print(x)
    return chan1


def normilaze(chan):
    LOW_LEVEL = 3
    OVERAGE_BOTTOM = 0
    temp = 0
    for x in range(len(chan1)):
        if (chan[x] < LOW_LEVEL and chan[x] > 0):
            OVERAGE_BOTTOM *= temp
            temp += 1
            OVERAGE_BOTTOM += chan[x]
            OVERAGE_BOTTOM /= temp
            chan[x] = OVERAGE_BOTTOM
        elif (chan[x] < 0):
            chan[x] = chan[x - 1]
    return chan


def spikes(chan):
    LOW_LEVEL = 3
    temp = 0
    flag = True
    for x in chan:
        if (x > LOW_LEVEL and flag):
            temp += 1
            flag = False
        if (x < LOW_LEVEL):
            flag = True
    return temp


def spikesArray(chan):
    LOW_LEVEL = 3
    temp = 0
    flag = False
    return_arr = []
    for x in range(len(chan)):
        if (chan[x] > LOW_LEVEL):
            flag = True
        if (chan[x] < LOW_LEVEL and flag):
            flag = False
            temp += 1
        return_arr.append(temp)

    return return_arr


def resist(chan1, chan2):
    RESISTENCE = 38.4
    LOW_LEVEL = 3
    chan3 = []
    temp = 0
    for i in range(min(len(chan2), len(chan1))):
        if (chan1[i] < LOW_LEVEL and chan1[i] > 0):
            temp = RESISTENCE * chan2[i] / chan1[i]
            print('-----------------------')
            print('POWER: ' + str(chan1[i] / chan2[i]))
            print('RESISTENCE: ' + str(temp))
            print('CHAN1 ' + str(chan1[i]))
            print('-----------------------')
        if (temp > 6):
            try:
                temp = chan3[i - 1]
                chan3.append(temp)
            except IndexError:
                print("ERROR")
        else:
            chan3.append(temp)

    return chan3


def deltaResist(resist):
    returnArr = []
    prev = resist[0]
    for x in resist:
        returnArr.append(x - prev)
        prev = x

    return returnArr


if __name__ == "__main__":
    to_draft = []
    spikes_to_draft = []

    DATA_EXTENSION = '.txt'
    phases = ['0%', '10%', '20%', '30%', '40%', '50%', '60%', '70%', '80%', '90%']

    path = ['./chan1_', './chan2_']

    for phase in phases:
        chan1 = read_csv(path[0] + phase + DATA_EXTENSION)
        chan2 = read_csv(path[1] + phase + DATA_EXTENSION)
        chan1 = normilaze(chan1)

        for x in range(len(chan2)):
            if chan2[x] < 0.2:
                chan2[x] = 0.15

        to_draft.append(resist(chan1, chan2))
        spikes_to_draft.append(spikesArray(chan1))

    plot3d(to_draft, spikes_to_draft)