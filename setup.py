# -*- coding: utf-8 -*-
#!/usr/bin/env python
''' This little thing is downloading all recent dotfiles and updates if necesarry '''

import os
import sys
import hashlib

class Install(Actions):

    def compare(self, sha_one, sha_two):
        return True

    def run(self, file):
        return True

    def all(self):
        return True