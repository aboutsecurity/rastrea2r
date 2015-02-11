# rastrea2r

Tested on Python 2.7.9 on Windows 7 32-64 bits / Windows 8.1 / Mac OS Yosemite

Dependencies

** General

Python 2.7.x

** Server.py

Bottle: pip install bottle

** Client 

Yara: yara-python-1.7 from Google code (https://plusvic.github.io/yara/)

DO NOT install yara-ctypes using pip install yara!!

Requests: pip install requests

** Current functionality in v0.3

yara-disk: Yara scan for file/directory objects on disk

yara-mem: Yara scan for running processes in memory

memdump: Acquires a memory dump from the endpoint ** Windows only

triage: Collects triage information from the endpoint ** Windows only








