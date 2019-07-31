import time

import visa

if __name__ == '__main__':
    rm = visa.ResourceManager()
    res=rm.list_resources()
    instr = rm.open_resource(res[0])
    print(instr.query('*IDN?'))

    instr.write('ch1:volts 2.5')#VOLTS per div
    # 25 points per vertical div

    instr.write("CH1:POSition 0")#in DIVS not in volts

    instr.write('hor:main:scale 5e-4')#Sec per div
    # 250 points in horizontal div

    # set trigger level in volts
    instr.write('trig:main:level 2.3')


    instr.write('acquire:state on')#record one snapshot
    #basically, screenshot
    #time.sleep(1)

    #receive data and convert to list of integers
    data = instr.query("curve?")
    result = list(map(int, data.split(" ")[1].split(",")))

    s=" ".join(list(map(str,result)))
    with open("oscilldata.txt","w") as f:
        f.write(s)

    #recieve information about waveform
    wfrm=instr.query('WAVFrm?')
    wfrm=[e.split() for e in wfrm.split(";")]

    #volts per div
    # print(wfrm[6][4])
    #sec per div
    # print(wfrm[6][6])