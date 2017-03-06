#!/bin/bash

eval "export $(egrep -z DBUS_SESSION_BUS_ADDRESS /proc/$(pgrep -u mohammad xfce4-session)/environ)";
deadbeef /data/robot/s.mp3 
./notifyMe.sh "$1" "$2" 
exit 0
