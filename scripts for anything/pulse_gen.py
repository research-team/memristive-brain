"""used to generate spike txt files for LTSPICE volage sources"""

def pulse_gen(time, volt):
    return "{t:.4f}s 0V\n+1n {v:.2f}V\n+3m {v:.2f}V\n+1n 0V\n".format(t=time, v=volt)


if __name__ == '__main__':
    path = "C:\\Users\\yurra\\Documents\\memristive-brain\\test-circuits\LTSPICE\\leaky-intergator\\gen2.txt"
    with open(path, "w") as f:

        # l=[i * 0.01 +0.0075 for i in range(200)]
        # l=[i * 0.01 +0.005 for i in range(200)]
        l = [i * 0.01 + 0.001 for i in range(200)]
        # l = [i * 0.01 for i in range(200)]
        l2 = []

        for i in [x / 10 for x in range(20, 30)]:
            l2 += [i] * 20

        print(len(l2))
        res = zip(l, l2)

        for i in res:
            # print(i)
            f.write(pulse_gen(i[0], i[1]))
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
