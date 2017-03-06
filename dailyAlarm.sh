#!/bin/bash
eval "export $(egrep -z DBUS_SESSION_BUS_ADDRESS /proc/$(pgrep -u mohammad xfce4-session)/environ)";
notify-send 'Reshom is about to open' 'Please pay attention, Reshom is about to OPEN !'  -t 20000
deadbeef /data/robot/s.mp3
pbme "Reshom is about to OPEN !"
