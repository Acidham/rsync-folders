#!/usr/bin/env python3

import os
import re
import sys

from Alfred3 import Tools
from Rsync import Config


def rsync(source: str, target: str) -> int:
    cmd = f'rsync -rtvuc --delete-after --ignore-errors "{source}/" "{target}/" --stats | grep "Number of files transferred"'
    res = os.popen(cmd).read()
    output = re.sub("[^0-9]", "", res)
    return int(output)


uid = Tools.getArgv(1)

rs = Config()
config = rs.getConfig()
result = 0
if uid == "-ALL-":
    for c in config:
        source = c["source"]
        target = c["target"]
        result = result + rsync(source, target)
else:
    for c in config:
        if c["uid"] == uid:
            source = c["source"]
            target = c["target"]
            result = int(rsync(source, target))


sys.stdout.write(str(result))
