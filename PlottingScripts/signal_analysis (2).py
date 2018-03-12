import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
from os.path import join, dirname, basename
from math import log10


def to_csv(file: str):
    new_file = file.split('.')[0]+'.csv'
    with open(file, 'r') as source, open(new_file, 'w') as output:
        trash = 20
        for line in source:
            if trash:
                trash -= 1
                continue
            output.write(line)
    return new_file


def print_n_rows(file: str, n: int):
    with open(file, 'r') as source:
        for line in source:
            if n:
                print(line)
                n -= 1
            else:
                break

class Analyst(object):
    def __init__(self, file: str, chunks=0, resistor=10**5, skip=0):
        self.__file = file
        self.__dataframe = pd.read_csv(file, names=['Time', 'Ch1_vol', 'Ch2_vol'], skiprows=skip)
        self.__splitted_df = None
        self.__dtv = None
        self.__mean = None
        self.__mean_amper = None
        self.__chunks = chunks
        self.__resistor = resistor
        for col in list(self.__dataframe):
            self.__dataframe[col] = self.__dataframe[col].astype(float)

    @property
    def chunks(self):
        return self.__chunks

    @chunks.setter
    def chunks(self, chunks: int):
        self.__chunks = chunks
        self.__dtv = None
        self.__splitted_df = None
        self.__mean = None
        self.__mean_amper = None

    @property
    def resistor(self):
        return self.__resistor

    @resistor.setter
    def resistor(self, resistor: int):
        self.__mean_amper = None
        self.__dataframe = self.__dataframe.drop(['Amperage, Resistance'], axis=1)
        self.__resistor = resistor

    def to_chunks(self):
        if not self.__splitted_df:
            time_split = [0] + [300 + i * 60 for i in range(0, self.chunks)]
            self.__splitted_df = [self.__dataframe[(self.__dataframe['Time'] >= time_split[i]) &
                                                   (self.__dataframe['Time'] < time_split[i + 1])]
                                  for i in range(0, len(time_split) - 1)]
        return self

    def calc_mean(self):
        if not self.__mean:
            self.to_chunks()
            self.__mean = {'Ch1_vol': [], 'Ch2_vol': []}
            for key in self.__mean:
                self.__mean[key] = [1000 * df[key].mean() for df in self.__splitted_df]
        return self

    def calc_amperage(self):
        self.__dataframe['Amperage'] = self.__dataframe['Ch1_vol']/self.resistor*10**6
        return self

    def calc_mean_amperage(self):
        if 'Amperage' not in self.__dataframe:
            self.calc_amperage()
        self.to_chunks()
        self.__mean_amper = [df['Amperage'].mean() for df in self.__splitted_df]
        return self

    def calc_dtv(self):
        if not self.__dtv:
            self.to_chunks().calc_mean()
            self.__dtv = {'Ch1_vol': [], 'Ch2_vol': []}
            for key in self.__dtv:
                self.__dtv[key] = [self.__mean[key][0]-0] + [(self.__mean[key][i] - self.__mean[key][i - 1])
                                                             for i in range(1, len(self.__mean[key]))]
        return self

    def __bar(self, data: dict, ylabel: str, plot_name: str):
        ticks = ['Step %d' % (i + 1) for i in range(0, self.chunks)]
        x = np.arange(len(ticks))
        ax = plt.figure(figsize=(15, 8)).add_subplot(111)
        ch1 = ax.bar(x - 0.1, np.array(data['Ch1_vol']), 0.2, color='b')
        ch2 = ax.bar(x + 0.1, np.array(data['Ch2_vol']), 0.2, color='g')
        ax.set_ylabel(ylabel)
        ax.set_xlabel('Step')
        ax.set_xticks(x)
        ax.set_xticklabels(ticks)
        min_, max_ = min(min(data['Ch2_vol']), min(data['Ch1_vol'])), max(max(data['Ch2_vol']), min(data['Ch1_vol']))
        step = 10**(int(log10(max_-min_))-1)//2
        ax.set_yticks(np.arange(min_, max_, step))
        ax.legend((ch1, ch2), ('ch1', 'ch2'))

        def label_val(rects):
            for rect in rects:
                height = rect.get_height()
                ax.text(rect.get_x() + rect.get_width() / 2., 1.05 * height,
                        '%3.2f' % float(height),
                        ha='center', va='bottom', rotation='vertical')
            pass

        label_val(ch1)
        label_val(ch2)

        plt.savefig(join(dirname(self.__file), plot_name))
        plt.show()
        plt.clf()

    # def __plot(self, x, y, plot_name: str, **plot_settings):
    #     plt.figure(figsize=(15, 10))
    #     plt.plot
    #     pass

    def dtv_analysis(self):
        self.calc_dtv()
        self.__bar(self.__dtv, 'dtV, mV', 'dtV.png')

    def mean_analysis(self):
        self.calc_mean()
        self.__bar(self.__mean, 'mean V, mV', 'meanV.png')

    def vol_vs_time_analysis(self, step=100):
        dataframe = self.__dataframe.iloc[::step, :]
        plt.figure(figsize=(15, 8))
        plt.plot(dataframe['Time'], dataframe['Ch1_vol'])
        plt.title('Ch1')
        plt.savefig(join(dirname(self.__file),
                         str(basename(self.__file).split('.')[0]).split('_')[0] + '_Ch1VolVsTime.png'))
        plt.show()
        plt.clf()
        plt.figure(figsize=(15, 10))
        plt.plot(dataframe['Time'], dataframe['Ch2_vol'])
        plt.title('Ch2')
        plt.savefig(join(dirname(self.__file),
                         str(basename(self.__file).split('.')[0]).split('_')[0] + '_Ch2VolVsTime.png'))
        plt.show()
        plt.clf()

    def plot_hysteresis(self):
        self.calc_mean_amperage().calc_mean()
        plt.figure(figsize=(15, 10))
        plt.plot(self.__mean['Ch2_vol'][:11], self.__mean_amper[:11], color='b', label='up')
        plt.plot(self.__mean['Ch2_vol'][10:], self.__mean_amper[10:], color='r', label='down')
        plt.xlabel('Voltage, mV')
        plt.ylabel('Amperage, mkA')
        plt.legend()
        plt.savefig(join(dirname(self.__file),
                         str(basename(self.__file).split('.')[0]).split('_')[0] + '_Hysteresis.png'))
        plt.show()
        plt.clf()
        pass

    def calc_resistance(self):
        if 'Resistance' not in self.__dataframe:
            self.calc_amperage()
            self.__dataframe['Resistance'] = self.__dataframe['Ch2_vol']/self.__dataframe['Amperage']
        return self

    def plot_resistance(self, step=100):
        self.calc_resistance()
        dataframe = self.__dataframe.iloc[::step, :]
        plt.figure(figsize=(15, 8))
        plt.plot(dataframe['Time'], dataframe['Resistance'])
        plt.title(str(basename(self.__file).split('_')[0]) + ' Resistance')
        plt.xlabel('Time, sec')
        plt.ylabel('Resistance, MOm')
        plt.savefig(join(dirname(self.__file),
                         str(basename(self.__file).split('_')[0])+'_Resistance.png'))
        plt.show()
        pass


if __name__ == '__main__':
    # csv = to_csv('C:\\Users\\User\\Desktop\\E03_exp\\Schematic_Calibration.txt')
    # analyst = Analyst(csv)
    file = 'C:\\Memristive_brain\\Data_for_analyse\\Hysteresis\\KzE02_hysteresis.csv'
    analyst = Analyst(file, chunks=21, skip=0)
    analyst.plot_resistance()
    # analyst.plot_hysteresis()
    analyst.calc_amperage()
    analyst.calc_mean_amperage()
    # print_n_rows(file, 23)
