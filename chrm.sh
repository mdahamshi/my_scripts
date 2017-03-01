#!/bin/bash
xdotool key super+2
sleep 0.3
xdotool getactivewindow windowsize 102% 108%
xdotool getactivewindow windowmove 0 0
sleep 0.2
xdotool key alt+F7
sleep 0.2
xdotool mousemove_relative x -77

sleep 0
xdotool key Left


sleep 0.1
xdotool key KP_Enter
