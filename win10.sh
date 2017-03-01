#!/bin/bash
vboxmanage startvm win10
sleep 1
x=$(xdotool getactivewindow)
echo $x > /data/archbkp/appsID/win10
