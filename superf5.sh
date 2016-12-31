




#!/bin/bash

xdotool key super+Down
sleep 0.3
xdotool getactivewindow windowsize 104% 114%
xdotool getactivewindow windowmove 0 0
sleep 0.2
xdotool key alt+F7
sleep 0.2
xdotool mousemove_relative x -77
sleep 0.3

xdotool key KP_Enter
sleep 0.2
xdotool key alt+F8
sleep 0.1
xdotool mousemove_relative x 77

sleep 0.1
xdotool key Left
sleep 0.1
xdotool key Left
sleep 0.1
xdotool key Left
xdotool key Left



sleep 0.1
xdotool key KP_Enter
