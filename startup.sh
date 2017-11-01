#!/bin/bash
sleep 5
cd /data/archbkp
synclient RTCornerButton=0
./cleanAppsIDs
unclutter -idle 1 &
sudo /data/archbkp/enableSysReq 
#xinput set-prop  13 275 1
# xinput set-prop  13 290 0 1 0

exit 0
