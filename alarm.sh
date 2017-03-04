#!/bin/bash
deadbeef /data/robot/s.mp3 &
./notifyMe.sh "$1" "$2" &
disown
exit 0
