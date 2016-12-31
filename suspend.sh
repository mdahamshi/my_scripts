#!/bin/bash
/data/archbkp/lk2.sh
dbus-send --system --print-reply --dest="org.freedesktop.UPower" /org/freedesktop/UPower org.freedesktop.UPower.Suspend 
sudo /data/archbkp/genMac.sh
