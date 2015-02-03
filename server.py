#!/usr/bin/env python

from time import gmtime, strftime
from bottle import route, get, run, post, request
import socket

server_address='172.27.4.162'

@post('/get')
def index():
    rulename=request.forms.get('rulename')
    print "Pulling " + rulename
    try:
        f=open(rulename,'rb')
        rule=f.read()
        f.close()
        return rule
    except:
        print "Error: The file requested doesn't exist\n"

@post('/put')
def index():
    recivedt=strftime('%Y-%m-%d %H:%M:%S', gmtime())
    rulename=request.forms.get('rulename')
    filename=request.forms.get('filename')
    hostname=request.forms.get('hostname')
    try:
        f=open("results.txt","a")
        f.write("%s, %s, %s, %s\n\n" % (recivedt,hostname,rulename,filename))
        f.close()
    except:
        print "Error: The file requested doesn't exist"
    return""

run(host=server_address,port=8080)


