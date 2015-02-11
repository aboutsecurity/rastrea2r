#!/usr/bin/env python
#
# triage win 32 client
#
# by Ismael Valenzuela @aboutsecurity / Foundstone (Intel Security)


import sys
import subprocess
from time import gmtime, strftime

from argparse import ArgumentParser



__author__ = 'ismael.valenzuela@foundstone.com'
__version__ = '0.1'


""" Variables """

smb_bin=r'192.168.68.150\tools' # Read-only share with third-party binary tools
smb_data=r'192.168.68.150\data' # Write-only share for output data

# Build list of tools here


tool=('psloggedon.exe',
      'winpmem.exe -',
      'autorunsc.exe -a * -ct -h',
      'netstat.bat')

# Iterate over list of tools

command=tool[3].split()

recivedt=strftime('%Y%m%d%H%M%S', gmtime())

f=open(r'\\'+smb_data+r'\\'+command[0]+recivedt,'w')

pst = subprocess.call(r'\\'+smb_bin+r'\\'+tool[3], stdout=f)

