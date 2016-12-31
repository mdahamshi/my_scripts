#!/bin/bash
cat /data/archbkp/pids/* | xargs kill
cd /data/archbkp/appsID
rm *
