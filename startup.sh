#!/bin/bash
sleep 5
cd /data/archbkp
synclient RTCornerButton=0
./cleanAppsIDs
unclutter -idle 1 &
sudo /data/archbkp/enableSysReq 
xfce4-terminal
exit 0
