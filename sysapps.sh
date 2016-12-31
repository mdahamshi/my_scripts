#!/bin/bash

sleep 2
terwin=$(xdotool getactivewindow)
xfce4-terminal -e top
echo "launching top"
x=$(xdotool getactivewindow)
while [ $x -eq $terwin ] 
do
sleep 0.5
x=$(xdotool getactivewindow)
done
echo $x > /data/archbkp/appsID/top
xprop -id `xdotool getactivewindow` | grep '_NET_WM_PID' | grep -oE '[[:digit:]]*$' > /data/archbkp/sysappspid
wmctrl -ir $x -e 0,0,0,680,380
wmctrl -ir $x -t 4
sleep 0.1

xfce4-terminal -e 'watch  "sensors ;free -h"'
echo "launching temp & ram"
x=$(xdotool getactivewindow)
while [ $x -eq $terwin ] 
do
sleep 0.5
x=$(xdotool getactivewindow)
done
echo $x > /data/archbkp/appsID/tempram
wmctrl -ir $x -e 0,682,0,680,380
wmctrl -ir $x -t 4
sleep 0.1

xfce4-terminal -e 'bmon'
echo "launching bmon"
x=$(xdotool getactivewindow)
while [ $x -eq $terwin ] 
do
sleep 0.5
x=$(xdotool getactivewindow)
done
echo $x > /data/archbkp/appsID/bmon
wmctrl -ir $x -e 0,0,380,680,380
wmctrl -ir $x -t 4
sleep 0.1

xfce4-terminal
echo "launching terminal"
x=$(xdotool getactivewindow)
while [ $x -eq $terwin ] 
do
sleep 0.5
x=$(xdotool getactivewindow)
done
echo $x > /data/archbkp/appsID/terminal
wmctrl -ir $x -e 0,682,380,680,380
wmctrl -ir $x -t 4
sleep 0.1
