import atexit
import os
import readline
import rlcompleter
import sys

# change autocomplete to tab
readline.parse_and_bind("tab: complete")

historyPath = os.path.expanduser("~/.pyhistory")

def save_history(historyPath=historyPath):
    import readline
    readline.write_history_file(historyPath)

if os.path.exists(historyPath):
    readline.read_history_file(historyPath)

atexit.register(save_history)

# anything not deleted (sys and os) will remain in the interpreter session
del atexit, readline, rlcompleter, save_history, historyPath

import numpy as np
#import pylab as pl

