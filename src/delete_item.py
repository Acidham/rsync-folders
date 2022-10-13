#!/usr/bin/env python3

from Alfred3 import Items, Tools
from Rsync import Config

rs = Config()

wf = Items()

config = rs.getConfig()

if len(config) == 0:
    wf.setItem(
        title="Sync settings are empty",
        subtitle="Configuration is empty",
        arg='add'
    )
    wf.addItem()
else:
    for c in config:
        uid = c['uid']
        name = c['name']
        source = c['source'][-25:]
        target = c['target'][-25:]
        wf.setItem(
            title=name,
            subtitle=f'...{source} → ...{target} (\u21E7 to see full path)',
            arg=f'{uid}|{name}|||DELETE',
            quicklookurl=f'file://{rs.getHelpfile(uid)}'
        )
        wf.addItem()
wf.write()
