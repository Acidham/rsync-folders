#!/usr/bin/env python3

import json
import os
import sys
from uuid import uuid4

from Alfred3 import Tools


class Config(object):

    def __init__(self) -> None:
        self.config_file: str = os.path.join(Tools.getDataDir(), "config.json")
        self.cache_dir = Tools.getCacheDir()
        self.config: list = self.getConfig()
        self._generateHelpFiles()

    def getConfigPath(self) -> str:
        """
        get path to config file

        Returns:
            str: path to config file
        """
        return self.config_file

    def getConfig(self) -> list:
        """
        read sync config as list

        Returns:
            list: configuration
        """
        config: list = []
        if os.path.isfile(self.config_file) and os.stat(self.config_file).st_size > 0:
            with open(self.config_file, "r") as f:
                config = json.load(f)
        return config

    def _writeConfig(self) -> None:
        if os.path.isfile(self.config_file):
            os.remove(self.config_file)
        with open(self.config_file, "w") as f:
            json.dump(self.config, f)

    def addEntry(self, name: str, source: str, target: str) -> None:
        """
        Add a new sync config and save to config file

        Args:
            name (str): Name of the sync setting
            source (str): path to source folder
            target (str): path to target folder
        """
        uid = str(uuid4())
        self.config.append({"uid": uid, "name": name, "source": source, "target": target})
        self._writeConfig()

    def deleteEntry(self, uid: str) -> None:
        """
        Delete config entry based on given name

        Args:
            uid (str): Name of the entry
        """
        new_config: list = []
        for c in self.config:
            if c['uid'] != uid:
                new_config.append(c)
        self.config = new_config
        self._writeConfig()
        self._deleteHelpFile(uid)

    def getHelpfile(self, uid: str) -> str:
        """
        Get Path to helpfile for uuid

        Args:
            uid (str): uid of the helpfile

        Returns:
            str: path to helpfile
        """
        help_file = os.path.join(self.cache_dir, f'{uid}.md')
        return help_file

    def _generateHelpFiles(self) -> None:
        """
        Helpfile generator
        """
        config = self.getConfig()
        for c in config:
            content = f"# {c['name']}\n"\
                f"* Source Folder: {c['source']}\n"\
                f"* Target Folder: {c['target']}"
            help_file = self.getHelpfile(c['uid'])
            with open(help_file, "w") as f:
                f.write(content)

    def _deleteHelpFile(self, uid: str) -> None:
        """
        Delete the helpfile corresponding to uuid

        Args:
            uid (str): uid of the helpfile
        """
        help_file = self.getHelpfile(uid)
        if os.path.isfile(help_file):
            os.remove(help_file)
