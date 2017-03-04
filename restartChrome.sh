#!/bin/bash
pkill --signal TERM -o chrome
cd /data/archbkp/appsID
for file in {chrome,chromeVR,last,messenger,messengerVR,inbox,inboxVR,docs,keep,moodle,whatsapp,translate,pocket,pushbullet,calendar,books,xp,win10}
do
echo 0 > ./$file
done
cd ..
sleep 2
cd lan
./chrome
sleep 2
../chWithBar.sh
sleep 1
../min.sh
sleep 0.2
./generalLan whatsapp "http://web.whatsapp.com "
sleep 2
../min.sh
sleep 0.2
./generalLan messenger "http://www.messenger.com"
sleep 2
../min.sh
sleep 0.2
exit 0
