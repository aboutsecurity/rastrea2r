#!/usr/bin/env python

from distutils.core import setup
import py2exe

setup(
    options={'pyexe':{'bundle_files':1,'compressed':True}},
    console=[{'script':"server.py"}],
    zipfile=None
)
