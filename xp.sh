
#!/bin/bash
vboxmanage startvm winxp
sleep 1
x=$(xdotool getactivewindow)
echo $x > /data/archbkp/appsID/xp


