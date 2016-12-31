


#!/bin/bash
google-chrome --user-data-dir=/data/google-chrome/ --profile-directory="Profile 1"
sleep 1
x=$(xdotool getactivewindow)
echo $x > /data/archbkp/appsID/chromeVR


