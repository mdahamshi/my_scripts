#!/bin/bash
thisWindow=$(xdotool getactivewindow)
wmctrl -c :ACTIVE: 
cd /data/archbkp/appsID
windowName=$(grep -l $thisWindow * --exclude-dir=chromeIDs)  # Check if this window with a shortcut, clean its ID after exiting
echo 0 > $windowName   # clean the window's ID
cd chromeIDs
if [ -a $windowName ]
then
	echo 0 > $windowName
fi
