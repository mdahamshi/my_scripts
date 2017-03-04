#!/bin/bash
pkill --signal TERM -o chrome
cd /data/archbkp/appsID/chromeIDs

for file in *
do
	echo 0 > ./$file
	echo 0 > ../$file
done

cd ../..
cd lan

./chrome

../chWithBar.sh

sleep 1

../min.sh

./generalLan whatsapp "http://web.whatsapp.com "

../min.sh

./generalLan messenger "http://www.messenger.com"

../min.sh

exit 0
