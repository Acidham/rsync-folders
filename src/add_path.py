#!/usr/bin/env python3

import os

from Alfred3 import Items, Tools


def to_absolute_path(filepath):
    filepath = os.path.expanduser(filepath)
    return os.path.abspath(filepath)


def is_valid_path(path):
    abs_path = to_absolute_path(path)
    if os.path.exists(abs_path) and os.path.isdir(abs_path):
        return True
    else:
        return False


env_source = Tools.getEnv("source")
env_target = Tools.getEnv("target")
query = Tools.getArgv(1)

path_to_ask = "source" if env_source == "" else "target"

new_path = to_absolute_path(query)


wf = Items()

if query != "" and is_valid_path(new_path):
    wf.setItem(
        title=f"Path exists, add as {path_to_ask} path?",
        subtitle=new_path,
        arg=f"{new_path}|add"
    )
elif query.startswith("/") or query.startswith("~"):
    wf.setItem(
        title="Path does not exists, create?",
        subtitle=new_path,
        arg=f"{new_path}|create"
    )
else:
    wf.setItem(
        title=f"Enter {path_to_ask} path",
        subtitle="Type a directory path starting with / or ~",
        valid=False
    )
wf.addItem()
wf.write()
