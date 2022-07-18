#!/usr/bin/env python3

import sys

from Alfred3 import Items, Tools
from Rsync import Config

Rs = Config()
config = Rs.getConfig()
uid, name, source, target, action = Tools.getArgv(1).split("|")
msg: str = ''

if action == "ADD":
    Rs.addEntry(name, source, target)
    msg = f'"{name}" added!'

if action == "DELETE":
    Rs.deleteEntry(uid)
    msg = f'"{name}" deleted!'

sys.stdout.write(msg)
