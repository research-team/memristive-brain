import visa
import equipment

def set_up(inst):
#    inst.write("DATa:ENCdg RIBinary")
    print(inst.query("*IDN?"))
    print(inst.query(":CHANnel1:SCALe?"))
    print(inst.query(":CHANnel1:RANG?"))
    print(inst.query(":TIMebase:MAIN:SCALe?"))
    inst.write(":CHANnel1:SCALe 1")
    inst.write(":TIMebase:MAIN:SCALe 0.0005")

if __name__ == "__main__":
    rm = visa.ResourceManager()
    inst = rm.get_instrument(rm.list_resources()[0])
    set_up(inst)
    inst.write(":WAV:SOUR CHAN1")
    inst.write(":WAV:MODE NORM")
    inst.write(":WAV:FORM ASCII")
    l = inst.query(":WAV:DATA?")
    print(len(l.split(',')))
    with open('/Users/klowar/Desktop/temp.txt',"w") as f:
        f.write(l)
    inst.close()
