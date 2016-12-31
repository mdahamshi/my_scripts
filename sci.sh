#!/bin/bash

feh -x -. /data/archbkp/love.png  &
sleep 0.2
wmctrl -r /data/archbkp/love.png -e '0,1260,0,99,100'

wmctrl -r /data/archbkp/love.png  -b add,above

wmctrl -r /data/archbkp/love.png  -b add,sticky

wmctrl -r /data/archbkp/love.png  -b add,skip_pager

WID=$(xdotool search --name "/data/archbkp/love.png")
xdotool windowmove $WID 1260 -30


exit 0

