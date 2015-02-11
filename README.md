# rastrea2r

Tested on Python 2.7.9 on Windows 7 32-64 bits / Windows 8.1 / Mac OS Yosemite

Dependencies

** General

Python 2.7.x

Latest version as Feb 2015 is https://www.python.org/downloads/release/python-279/

** Server.py

Bottle: pip install bottle

** Client 

Yara: yara-python-1.7 from Google code (https://plusvic.github.io/yara/)

PSutil for win64: https://github.com/giampaolo/psutil
WMI for win32: https://pypi.python.org/pypi/WMI/

DO NOT install yara-ctypes using pip install yara!!

For Windows 64 bit latest version is yara-python-3.3.0.win-amd64-py2.7.exe (Feb 2015)

Requests: pip install requests

** Compiling

Pyinstaller: https://github.com/pyinstaller/pyinstaller/wiki
Pywin32: http://sourceforge.net/projects/pywin32/files/ ** Windows only

** Current functionality in v0.3

yara-disk: Yara scan for file/directory objects on disk

yara-mem: Yara scan for running processes in memory

memdump: Acquires a memory dump from the endpoint ** Windows only

triage: Collects triage information from the endpoint ** Windows only








