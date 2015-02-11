# rastrea2r

Tested on Python 2.7.9 on Windows 7 32 bits / Mac OS Yosemite


Dependencies

** General

Python 2.7.x

** Server.py

Bottle: pip install bottle

** Client 

Yara: yara-python-1.7 from Google code (https://plusvic.github.io/yara/)

DO NOT install yara-ctypes using pip install yara!!

Requests: pip install requests

** Current functionality in v0.1

yara-disk: Yara scan for file/directory objects on disk

yara-mem: Yara scan for running processes in memory


** Roadmap v0.2

triage:

On Windows

-- sysinternals: executes sysinternals binaries from smb share and writes output to smb share

---- PSLOGGEDON
---- AUTORUNS
---- etc.

memdump:








