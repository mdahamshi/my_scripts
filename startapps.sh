#!/bin/bash
/opt/google/chrome/google-chrome --profile-directory=Default --app-id=hnpfjngllnobngcgfapefoaidbinmjnm
sleep 0.1
x=$(xdotool getactivewindow)
echo $x > /data/archbkp/appsID/whatsapp
/data/archbkp/min.sh
sleep 0.1
/opt/google/chrome/google-chrome --profile-directory=Default --app-id=edmijkelpnflahpdblkkobimcplcgmgj
x=$(xdotool getactivewindow)
echo $x > /data/archbkp/appsID/inbox
sleep 0.1
/data/archbkp/min.sh
sleep 0.1

/opt/google/chrome/google-chrome --profile-directory=Default --app-id=pkdolbhacjglggndeaejcicacgagfjkj
x=$(xdotool getactivewindow)
echo $x > /data/archbkp/appsID/calendar
sleep 0.1
/data/archbkp/min.sh
sleep 0.1

/opt/google/chrome/google-chrome "--profile-directory=Profile 1" --app-id=fiifpgmaoldkdnleodpphfbpdlgdipbl
x=$(xdotool getactivewindow)
echo $x > /data/archbkp/appsID/translate
sleep 0.1
/data/archbkp/min.sh
sleep 0.1


/opt/google/chrome/google-chrome --profile-directory=Default --app-id=chloanpjljoabmkppinkkfkenkdhcbaf
x=$(xdotool getactivewindow)
echo $x > /data/archbkp/appsID/messenger
sleep 0.1
/data/archbkp/min.sh
sleep 0.1

/opt/google/chrome/google-chrome "--profile-directory=Profile 1" --app-id=chloanpjljoabmkppinkkfkenkdhcbaf
x=$(xdotool getactivewindow)
echo $x > /data/archbkp/appsID/messengerVR
sleep 0.1
/data/archbkp/min.sh
sleep 0.1

/opt/google/chrome/google-chrome --profile-directory=Default --app-id=befeppdlpgljhnmaoheeflpaaohongcd
x=$(xdotool getactivewindow)
echo $x > /data/archbkp/appsID/pushbullet
sleep 0.1
/data/archbkp/min.sh
sleep 0.1
