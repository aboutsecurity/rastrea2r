# rastrea2r

Tested on Python 2.7.9 on Windows 7 32-64 bits / Windows 8.1 / Mac OS Yosemite

# Dependencies

** General

Python 2.7.x

Latest version as Feb 2015 is https://www.python.org/downloads/release/python-279/

** Server.py

Bottle: pip install bottle

** Client 

Yara: yara-python-1.7 from Google code (https://plusvic.github.io/yara/)

DO NOT install yara-ctypes using pip install yara!!

PSutil for win64: https://github.com/giampaolo/psutil

WMI for win32: https://pypi.python.org/pypi/WMI/

For Windows 64 bit latest version is yara-python-3.3.0.win-amd64-py2.7.exe (Feb 2015)

Requests: pip install requests

# Compiling rastrea2r

Make sure you have all the dependencies installed for the binary you are going to build on your Windows box. Then install:

Pywin32: http://sourceforge.net/projects/pywin32/files/ ** Windows only

Pyinstaller: https://github.com/pyinstaller/pyinstaller/wiki

# Current functionality in v0.5

yara-disk: Yara scan for file/directory objects on disk

yara-mem: Yara scan for running processes in memory

memdump: Acquires a memory dump from the endpoint ** Windows only

triage: Collects triage information from the endpoint ** Windows only

** Notes

For memdump and triage modules, SMB shares must be set up in this specific way:

-- Binaries (sysinternals, batch files and others) must be located in a shared folder called TOOLS (read only)

\\\\path-to-share-folder\tools

-- Output is sent to a shared folder called DATA (write only)

\\\\path-to-share-folder\data

For yara-mem and yara-disk scans, the yara rules must be in the same directory where the server is executed from.

The RESTful API server stores data received in a file called results.txt in the same directory.

# License

The content of this project itself is licensed under the
[Creative Commons Attribution 3.0 license](http://creativecommons.org/licenses/by/3.0/us/deed.en_US),
and the underlying source code used to format and display that content
is licensed under the [MIT license](http://opensource.org/licenses/mit-license.php).

# Credits & References

To Robert Gresham Jr. for his help with the Triage module. Thanks buddy!

To Ricardo Dias for the idea of using a REST server and his great paper on how to use Python and Yara with McAfee ePO: http://www.sans.org/reading-room/whitepapers/forensics/intelligence-driven-incident-response-yara-35542

Presentation on how to use rastrea2r and open source tools for Incident Response, Continuous Monitoring and Hunting (SANS @Night, McLean VA, February 2016): https://github.com/aboutsecurity/Talks-and-Presentations/blob/master/Ismael_Valenzuela-Hunting_for_IOCs_rastrea2r-Feb-2016.pdf














