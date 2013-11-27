#!/usr/bin/env python

import sys
import math

command = sys.argv[1]
f = open(sys.argv[2],"r")


if command == "log":
    for line in f:
        a = float(line.replace("\n",""))
        print math.log(a+1)
elif command == "exp":
    for line in f:
        a = float(line.replace("\n",""))
        print (math.exp(a)-1)
else:
    print "unrecognized command"

f.close()

