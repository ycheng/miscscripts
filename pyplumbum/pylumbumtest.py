#!/bin/python3

from plumbum import local
import pprint as pp

shtest = local["./shtest"]

pp.pprint(shtest.run(retcode=None))
