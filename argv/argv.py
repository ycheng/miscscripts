#! /usr/bin/python

import sys

if (len(sys.argv) == 2):
   print sys.argv[1]

if (len(sys.argv) != 2):
   print "useage: " + sys.argv[0] + " [XXX]"

