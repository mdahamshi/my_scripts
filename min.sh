#!/bin/bash
currentWindowID=$(xdotool getactivewindow)
wmctrl -r :ACTIVE: -t 10
xdotool windowminimize $currentWindowID
cd /data/archbkp/appsID

suspected=$(cat * | grep $currentWindowID) # grep id that equal current window id

if [ -z $suspected ]    # This mean there are no windows with current window id
then
	echo $currentWindowID > /data/archbkp/appsID/last
	exit 0
fi

nullID=$(cat null)
lastID=$(cat last)

if [ $currentWindowID -eq $lastID || $currentWindowID -eq $nullID ]
then
	echo $currentWindowID > /data/archbkp/appsID/last
	exit 0
fi

xp=$(cat /data/archbkp/appsID/xp)
ten=$(cat /data/archbkp/appsID/win10)

if [ $currentWindowID -eq $xp ] 
then
	vboxmanage controlvm xp pause
fi

if [ $currentWindowID -eq $ten ]
then
	vboxmanage controlvm win10 pause
fi

exit 0
