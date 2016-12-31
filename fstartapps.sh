
#!/bin/bash

terwin=$(xdotool getactivewindow)
sleep 2
 google-chrome --user-data-dir=/data/google-chrome/ --profile-directory="Default" --app=http://web.whatsapp.com & > /dev/null 2>&1
echo "launching whatsapp"
x=$(xdotool getactivewindow)
while [ $x -eq $terwin ] 
do
sleep 0.5
x=$(xdotool getactivewindow)
done
echo $x > /data/archbkp/appsID/whatsapp
xprop -id `xdotool getactivewindow` | grep '_NET_WM_PID' | grep -oE '[[:digit:]]*$' > /data/archbkp/pids/whatsapp


wmctrl -r :ACTIVE: -t 5
xdotool windowminimize $x
sleep 0.1

 google-chrome --user-data-dir=/data/google-chrome/ --profile-directory="Default" --app=http://inbox.google.com/ & > /dev/null 2>&1
echo "launching inbox"
x=$(xdotool getactivewindow)
while [ $x -eq $terwin ] 
do
sleep 0.5
x=$(xdotool getactivewindow)
done
xprop -id `xdotool getactivewindow` | grep '_NET_WM_PID' | grep -oE '[[:digit:]]*$' > /data/archbkp/pids/inbox
echo $x > /data/archbkp/appsID/inbox
wmctrl -r :ACTIVE: -t 5
xdotool windowminimize $x
sleep 0.1

 google-chrome --user-data-dir=/data/google-chrome/ --profile-directory="Profile 1" --app=http://inbox.google.com/ & > /dev/null 2>&1
echo "launching inboxVR"
x=$(xdotool getactivewindow)
while [ $x -eq $terwin ] 
do
sleep 0.5
x=$(xdotool getactivewindow)
done
xprop -id `xdotool getactivewindow` | grep '_NET_WM_PID' | grep -oE '[[:digit:]]*$' > /data/archbkp/pids/inboxVR
echo $x > /data/archbkp/appsID/inboxVR
wmctrl -r :ACTIVE: -t 5
xdotool windowminimize $x
sleep 0.1

 google-chrome --user-data-dir=/data/google-chrome/ --profile-directory="Default" --app=http://keep.google.com/ & > /dev/null 2>&1
echo "launching keep"
x=$(xdotool getactivewindow)
while [ $x -eq $terwin ] 
do
sleep 0.5
x=$(xdotool getactivewindow)
done
xprop -id `xdotool getactivewindow` | grep '_NET_WM_PID' | grep -oE '[[:digit:]]*$' > /data/archbkp/pids/keep
echo $x > /data/archbkp/appsID/keep
wmctrl -r :ACTIVE: -t 5
xdotool windowminimize $x
sleep 0.1

 google-chrome --user-data-dir=/data/google-chrome/ --profile-directory="Default" --app=http://calendar.google.com/calendar/gp#~calendar:view=m & > /dev/null 2>&1
echo "launching calendar"
x=$(xdotool getactivewindow)
while [ $x -eq $terwin ] 
do
sleep 0.5
x=$(xdotool getactivewindow)
done
xprop -id `xdotool getactivewindow` | grep '_NET_WM_PID' | grep -oE '[[:digit:]]*$' > /data/archbkp/pids/calendar
echo $x > /data/archbkp/appsID/calendar
wmctrl -r :ACTIVE: -t 5
xdotool windowminimize $x
sleep 0.1


 google-chrome --user-data-dir=/data/google-chrome/ --profile-directory="Default" --app=http://translate.google.com/m/translate & > /dev/null 2>&1
echo "launching translate"
x=$(xdotool getactivewindow)
while [ $x -eq $terwin ] 
do
sleep 0.5
x=$(xdotool getactivewindow)
done
xprop -id `xdotool getactivewindow` | grep '_NET_WM_PID' | grep -oE '[[:digit:]]*$' > /data/archbkp/pids/translate
echo $x > /data/archbkp/appsID/translate
wmctrl -r :ACTIVE: -t 5
xdotool windowminimize $x
sleep 0.1

 google-chrome --user-data-dir=/data/google-chrome/ --profile-directory="Default" --app=http://www.messenger.com & > /dev/null 2>&1
echo "launching messenger"
x=$(xdotool getactivewindow)
while [ $x -eq $terwin ] 
do
sleep 0.5
x=$(xdotool getactivewindow)
done
xprop -id `xdotool getactivewindow` | grep '_NET_WM_PID' | grep -oE '[[:digit:]]*$' > /data/archbkp/pids/messenger
echo $x > /data/archbkp/appsID/messenger
wmctrl -r :ACTIVE: -t 5
xdotool windowminimize $x
sleep 0.1

 google-chrome --user-data-dir=/data/google-chrome/ --profile-directory="Profile 1" --app=http://www.messenger.com & > /dev/null 2>&1
echo "launching messenger VR"
x=$(xdotool getactivewindow)
while [ $x -eq $terwin ] 
do
sleep 0.5
x=$(xdotool getactivewindow)
done
echo $x > /data/archbkp/appsID/messengerVR

xprop -id `xdotool getactivewindow` | grep '_NET_WM_PID' | grep -oE '[[:digit:]]*$' > /data/archbkp/pids/appspidVR
wmctrl -r :ACTIVE: -t 5
xdotool windowminimize $x
sleep 0.1

 google-chrome --user-data-dir=/data/google-chrome/ --profile-directory="Default" --app=http://www.pushbullet.com/ & > /dev/null 2>&1
echo "launching pushbullet"
x=$(xdotool getactivewindow)
while [ $x -eq $terwin ] 
do
sleep 0.5
x=$(xdotool getactivewindow)
done
xprop -id `xdotool getactivewindow` | grep '_NET_WM_PID' | grep -oE '[[:digit:]]*$' > /data/archbkp/pids/pushbullet
echo $x > /data/archbkp/appsID/pushbullet
wmctrl -r :ACTIVE: -t 5
xdotool windowminimize $x
sleep 0.1

gnome-calculator & > /dev/null 2>&1
echo "launching calculator"
x=$(xdotool getactivewindow)
while [ $x -eq $terwin ] 
do
sleep 0.5
x=$(xdotool getactivewindow)
done
echo $x > /data/archbkp/appsID/calc

xprop -id `xdotool getactivewindow` | grep '_NET_WM_PID' | grep -oE '[[:digit:]]*$' > /data/archbkp/pids/calcPid
wmctrl -r :ACTIVE: -t 5
xdotool windowminimize $x

echo "done !"

