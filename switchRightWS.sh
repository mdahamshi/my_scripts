#!/bin/bash
currentWS=$(wmctrl -d  | awk '/\*/{print $1}')
targetWS=$((currentWS+1))
desktopNum=$(wmctrl -d | tail -1 | awk '{print $1}')
if [ $currentWS -eq $desktopNum ]
then
	targetWS=0
fi
wmctrl -s $targetWS
