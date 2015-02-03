#!/usr/bin/env python

import os
import sys
import yara
from requests import post


if len(sys.argv) < 3:
    sys.exit ("yara_rest folder server yararule")
    
# fetch yara signature file

# default port is 8080
server=sys.argv[2]
port=8080

try:
    rule_payload = {'rulename':sys.argv[3]}
    server_url='http://'+server+':'+str(port)+'/get'
    r = post('http://'+server+':'+str(port)+'/get', data=rule_payload)
except:
    sys.exit("Failed to contact the server")
    
# fetch the rules

rules=yara.compile(sources={'namespace':r.text})

# if r is not 200 then error
# if r.text is empty then the rule requested doesn't exist on the server

if r.text != ' ':
    for root, dirs, filenames in os.walk(sys.argv[1]):
        for name in filenames:
            try:
                file_path=os.path.join(root,name)
                matches=rules.match(filepath=file_path)
        
                if matches:
                    payload={"rulename":matches[0],
                             "filename":file_path,
                             "hostname":os.environ['COMPUTERNAME']}
                    print payload
                    
                    p=post('http://'+server+':'+str(port)+'/put',data=payload)       
            except:
                continue
else:
    print "Failed to download the rule"