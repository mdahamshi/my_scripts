#!/bin/bash
message=$1

if [ -z "$1" ]
then
	message="Your Alarm/Command finished !"
fi
notify-send "$message" "$2" -t 20000
exit 0
