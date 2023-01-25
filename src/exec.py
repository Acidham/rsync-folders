#!/usr/bin/env python3

import os
import re
import sys

from Alfred3 import Tools
from Rsync import Config

TMP_FILE = "/tmp/rsync_log.txt"

# Remove log file when exists
if os.path.exists(TMP_FILE):
    os.remove(TMP_FILE)

# write stats to log files


def write_log(source, target, txt):
    with open(TMP_FILE, "a") as f:
        head = f"{source} -> {target}"
        f.write(head)
        f.write("\n")
        f.write("=" * len(head))
        f.write("\n")
        f.write(txt)
        f.write("\n")

# rsync source to target


def rsync(source: str, target: str) -> int:
    cmd = f'rsync -rtvuc --delete-after --ignore-errors "{source}/" "{target}/" --stats'
    res = os.popen(cmd).read()
    return (res)


uid = Tools.getArgv(1)

rs = Config()
config = rs.getConfig()
file_count = 0
if uid == "-ALL-":
    for c in config:
        source = c["source"]
        target = c["target"]
        if os.path.exists(source) and os.path.exists(target):
            result = rsync(source, target)
            match = re.search("Number of files transferred (\d+)", result)
            file_count += int(match.group(1)) if match != None else 0
        else:
            result = "ERROR: one or both were not found!"
        write_log(source, target, result)
else:
    for c in config:
        if c["uid"] == uid:
            source = c["source"]
            target = c["target"]
            if os.path.exists(source) and os.path.exists(target):
                result = rsync(source, target)
                match = re.search("Number of files transferred: (\d+)", result)
                file_count += int(match.group(1)) if match != None else 0
                write_log(source, target, result)
            else:
                result = "ERROR: one or both were not found!"
            write_log(source, target, result)


sys.stdout.write(str(file_count))
