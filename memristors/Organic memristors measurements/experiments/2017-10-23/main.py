import matplotlib.pyplot as plt
import numpy
import csv
data=[]
p1=[]
p2=[]
T0=0.119
T1=0.120
lp1=0
lp2=0
I=[]
V=[]
with open('test.csv') as f:
    reader = csv.reader(f)
    for row in reader:
        row.pop()
        line = list(map(float,row))
        data.append(line)
        V.append(line[1])
        I.append(line[3])
        if (line[0]-lp1)>T0:
            p1.append(line)
            lp1=line[0]
        if (line[0] - lp2) > T1:
            p2.append(line)
            lp2 = line[0]

#print(data)

x = []
Imax = []
Imin = []
Vmax = []
Vmin = []

for p in p2:
    indp = p2.index(p)
    p1p = p1[indp]
    x.append(p[0] - p1p[0])

    p2p = []
    if (indp + 1) < len(p2):
        p2p = p2[indp + 1]
    else:
        p2p = data[len(data) - 1]

    ind1 = data.index(p)
    ind2 = data.index(p2p)

    Vmax.append(max([x[1] for x in data[ind1:ind2]]))
    Vmin.append(min([x[1] for x in data[ind1:ind2]]))
    Imax.append(max([x[3] for x in data[ind1:ind2]]))
    Imin.append(min([x[3] for x in data[ind1:ind2]]))

#V=V[:V.__len__()-2]
#I=list(map(lambda x:x/1.8,I[2:]))
V=V[:V.__len__()-4]
I=list(map(lambda x:x/1.8,I[4:]))

R=[]
p=[];
for i in range(0,V.__len__()-1):
    if I[i]!=0:
        p=i
        R.append(V[i]/I[i])
    else:
        R.append(V[p]/I[p])
#R=list(map(lambda x:x*1e6,R))
smb = plt.plot(V)
smb2 = plt.plot(I)
smb3 = plt.plot(R)
plt.setp(smb, color='g', linewidth=2.0)
plt.setp(smb2, color='r', linewidth=2.0)
plt.setp(smb3, color='b', linewidth=2.0)
plt.show()

# plt.plot(time,R,'b')
# plt.show()
# plt.plot(time,I,'r')
# plt.show()
# # print (R)
