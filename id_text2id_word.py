#!/usr/bin/env python

import sys

filename = sys.argv[1]

f = open(filename,"r")

for line in f:
    id = line.replace("\n","").split("\t")[0]
    text = line.replace("\n","").split("\t")[1]
    text_no_newline = text.replace("\\\\n"," ")
    words = [x for x in text_no_newline.split(" ")
             if x != ""]
    c = 1
    for word in words:
        print id+"\t"+str(c)+"\t"+word
        c = c + 1

f.close()
