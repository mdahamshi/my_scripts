#!/bin/bash
pkill --oldest chrome
cd /data/archbkp/appsID/chromeIDs

for file in *
do
	echo 0 > ./$file
	echo 0 > ../$file
done

cd ../..
cd lan

./generalLan whatsapp "http://web.whatsapp.com "

../min.sh

./generalLan messenger "http://www.messenger.com"

../min.sh
echo 0 > ../appsID/chrome
echo 0 > ../appsID/chromeIDs/chrome

exit 0
