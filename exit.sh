#!/bin/bash
thisWindow=$(xdotool getactivewindow)
wmctrl -c :ACTIVE: 
cd /data/archbkp/appsID
windowName=$(grep $thisWindow * | cut -d ':' -f 1)  # Check if this window with a shortcut, clean its ID after exiting
echo 0 > $windowName   # clean the window's ID
echo 0 > ./chromeIDs/$windowName
