#! /usr/bin/python
#
# Y.C Cheng <ycheng _@_ ycheng.net>
# Y.C Cheng <ycheng.tw _@_ gmail.com>
#
# transform the amixer output from
#
# CCC
#   D1D1D1
#   D2D2D2
#
# INTO
#
# CCC|D1D1D1
# CCC|D2D2D2
#
# to make easy to diff between two setting
#

import sys

for line in sys.stdin:
    if (line[0] == ' '):
       print M + "|" + line.strip()
    else:
       M = line.strip()
