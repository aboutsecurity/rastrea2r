#!/usr/bin/env python
#
# triag win 32 client
#
# by Ismael Valenzuela @aboutsecurity / Foundstone (Intel Security)


import sys
import subprocess
from time import gmtime, strftime

from argparse import ArgumentParser



__author__ = 'ismael.valenzuela@foundstone.com'
__version__ = '0.1'


""" Variables """

smb_bin=r'172.16.83.133\tools' # Read-only share with third-party binary tools
smb_data=r'172.16.83.133\data' # Write-only share for output data

# Build list of tools here

tool='psloggedon.exe'

# Iterate over list of tools

recivedt=strftime('%Y%m%d%H%M%S', gmtime())

f=open(r'\\'+smb_data+r'\\'+tool+recivedt,'w')

pst = subprocess.call(r'\\'+smb_bin+r'\\'+tool, stdout=f)