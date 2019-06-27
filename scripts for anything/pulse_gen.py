"""used to generate spike txt files for LTSPICE volage sources"""


def pulse_gen(time, volt):
    return "{t:.4f}s 0V\n+1n {v:.2f}V\n+3m {v:.2f}V\n+1n 0V\n".format(t=time, v=volt)


def line_gen(stop_time, volt):
    return "+1ns {v:.2f}V\n{t:.4f}s {v:.2f}V\n".format(t=stop_time, v=volt)


if __name__ == '__main__':
    path = "C:\\Users\\yurra\\Documents\\memristive-brain\\test-circuits\\LTSPICE\\combined_sch\\gen2.txt"
    with open(path, "w") as f:

        # l=[i * 0.01 +0.0075 for i in range(200)]
        # l=[i * 0.01 +0.005 for i in range(200)]
        times = [i * 0.025 for i in range(1, 201)]
        # l = [i * 0.01 for i in range(200)]
        volts = [i * 0.05 for i in range(221, 21, -1)]

        # print(l[1:])

        res = zip(times, volts)
        for i in res:
            f.write(line_gen(i[0], i[1]))
        f.write("\n")
        #
        # for i in map(lambda x:x*0.005, range(10,20)):
        #     f.write(pulse_gen(i,2.25))
        #
        # for i in map(lambda x:x*0.005, range(20,20)):
        #     f.write(pulse_gen(i,2.5))
        #
        # for i in map(lambda x:x*0.005, range(20,30)):
        #     f.write(pulse_gen(i,2.75))
        #
        # f.write("\n")
        #
        # for i in map(lambda x:x*0.01, range(15,25)):
        #     f.write(pulse_gen(i,3))
        # #print(pulse_gen(0,3))
