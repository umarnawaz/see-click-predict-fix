import math

f = open("submission.csv","r")

c = 0
for line in f:
    if c == 0:
        print line.replace("\n","")
        c = c + 1
    else:        
        a = line.replace("\n","").split(",")
        a0 = a[0]
        a1 = a[1]
        a2 = a[2]
        a3 = str(math.floor(float(a[3])))
        print ",".join([a0,a1,a2,a3])

