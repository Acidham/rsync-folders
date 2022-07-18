#!/usr/bin/env python3

from Alfred3 import Items, Tools
from Rsync import Config

rs = Config()
config = rs.getConfig()

wf = Items()

if len(config) == 0:
    wf.setItem(
        title="Empty Configuration",
        subtitle="Add Rsync config first",
        arg='add',
        valid=True
    )
    wf.addItem()
else:
    wf.setItem(
        title="Execute All...",
        subtitle="Execute all rsync entries",
        arg="-ALL-"
    )
    wf.addItem()

    for c in config:
        s = c['source'][-25:]
        t = c['target'][-25:]
        ql = f'file://{rs.getHelpfile(c["uid"])}'
        wf.setItem(
            title=c["name"],
            subtitle=f"...{s} → ...{t} (\u21E7 to see full path)",
            arg=f"{c['uid']}",
            quicklookurl=ql
        )
        wf.addItem()

wf.write()
