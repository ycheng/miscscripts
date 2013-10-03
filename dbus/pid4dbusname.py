#!/usr/bin/python
# dependency: python-dbus

def print_usage(cmd):
    print "Usage: " + cmd + " { system | session} dbus_name"

import dbus
import sys

if (len(sys.argv) != 3):
    print_usage(sys.argv[0])
    sys.exit(-1)

if (sys.argv[1] == "system"):
    bus1 = dbus.SystemBus()
elif (sys.argv[1] == "session"):
    bus1 = dbus.SessionBus()
else:
    print_usage(sys.argv[0])
    sys.exit(-1)
    
obj = bus1.get_object('org.freedesktop.DBus', '/org/freedesktop/DBus');

try:
    pid = dbus.Interface(obj, 'org.freedesktop.DBus').GetConnectionUnixProcessID(sys.argv[2]);
except:
    pid = -1

print pid
