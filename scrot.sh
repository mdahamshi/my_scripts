#!/bin/bash

x='%Y-%m-%d_$wx$h.png'
sleep 0.5
scrot /data/tmp/scrot/$x -s
feh $(ls /data/tmp/scrot/* -t | head -1) &

exit 0
