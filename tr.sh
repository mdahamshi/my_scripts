#!/bin/bash
sleep 0.2
xdotool key 23
xdotool key f
sleep 0.1
xdotool key c
sleep 1.5
xdotool key f
sleep 0.1
xdotool key c
sleep 1.5
xdotool key 23
sleep 0.1
xdotool key 23
sleep 0.1
xdotool key 37+22
sleep 0.1
x=$(xdotool getactivewindow)
wmctrl -r :ACTIVE: -t 5
sleep 0.1
xdotool windowminimize $x
