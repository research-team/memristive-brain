import visa
import time

def write(command, inst, delay=0.1):
    inst.write(command)
    time.sleep(delay)

def query(command, inst, delay=1):
    return inst.query(command, delay=delay)

def set_up(inst):
    print(inst.query("*IDN?"))
    print(inst.query(":CHANnel1:SCALe?"))
    print(inst.query(":CHANnel1:RANG?"))
    print(inst.query(":TIMebase:MAIN:SCALe?"))
    write(":CHANnel1:SCALe 1", inst)
    write(":CHANnel2:SCALe 1", inst)
    write(":CHANnel3:SCALe 1", inst)
    write(":CHANnel4:SCALe 1", inst)
    write(":TIMebase:MAIN:SCALe 0.01", inst)

def set_chanel(chanel_name):
    write(":WAV:SOUR " + chanel_name, inst)

if __name__ == "__main__":
    rm = visa.ResourceManager()
    inst = rm.get_instrument(rm.list_resources()[0])

    inst.query_delay = 0.5
    set_up(inst)
    write(":WAV:MODE MAX", inst)
    write(":WAV:FORM ASCII", inst)
    write(":ACQ:MEMDEPTH LONG", inst)
    write("WAVeform:POINts:MODE MAX", inst)
    inst.query_delay = 0.9
    settings = [
        {'ff': open('/Users/klowar/Desktop/data/chan1.txt',"w"), 'name': 'CHAN1'},
        {'ff': open('/Users/klowar/Desktop/data/chan2.txt',"w"), 'name': 'CHAN2'}
    ]
    iteration = 0
    while (iteration < 61):
        for x in range(len(settings)):
            chanel_name = settings[x]['name']
            set_chanel(chanel_name)
            l = inst.query(":WAV:DATA? " + chanel_name)
            print(str(iteration) + ': ' + str(len(l.split(','))))
            iteration += 1
            settings[x]['ff'].write(l)
    inst.close()