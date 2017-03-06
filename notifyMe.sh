#!/bin/bash

eval "export $(egrep -z DBUS_SESSION_BUS_ADDRESS /proc/$(pgrep -u mohammad xfce4-session)/environ)";

message=$1

if [ -z "$1" ]
then
	message="Your Alarm/Command finished !"
fi
DISPLAY=:0 notify-send "$message" "$2" -t 20000
exit 0
