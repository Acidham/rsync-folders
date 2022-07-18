#!/usr/bin/env python3

from Alfred3 import Items, Tools

name = Tools.getArgv(1)
if name == "":
    name = "Enter a Name for the entry..."
source = Tools.getEnv("source")
s = source[-20:]
target = Tools.getEnv("target")
t = target[-20:]

arg_value = f"|{name}|{source}|{target}|ADD"

if name != "" and source != "":
    valid = True
else:
    valid = False


wf = Items()
wf.setItem(
    title=name,
    subtitle=f"...{s} → ...{t}",
    arg=arg_value,
    valid=valid,
)
wf.addItem()
wf.write()
