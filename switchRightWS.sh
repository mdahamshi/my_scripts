#!/bin/bash
currentWS=$(wmctrl -d | grep '*' | awk '{print $1}')
targetWS=$((currentWS+1))
if [ $currentWS -eq 11 ]
then
	targetWS=0
fi
wmctrl -s $targetWS
