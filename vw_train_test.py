#!/usr/bin/env python

import sys
import os

trainf = sys.argv[1]
testf = sys.argv[2]
fname = sys.argv[3]
num_classes = sys.argv[4]
passes = sys.argv[5]
bits = sys.argv[6]

os.system("vw -d "+trainf+" -f "+fname+".model -c --passes "
          +passes+" -b "+bits+" --oaa "+num_classes)
os.system("rm "+trainf+".cache")
os.system("vw -d "+testf+" -i "+fname+".model -t -p "
          +fname+".predictions --oaa "+num_classes)
os.system("paste "+fname+".labels "+fname+".predictions > "
          +fname+".labels_predictions")
