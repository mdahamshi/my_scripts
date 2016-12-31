

#!/bin/bash
google-chrome --user-data-dir=/data/google-chrome/ --profile-directory="Default"
sleep 1

x=$(xdotool getactivewindow)
echo $x > /data/archbkp/appsID/chrome


