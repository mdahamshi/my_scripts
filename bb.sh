#!/bin/bash
( speaker-test -t sine -f 1000 )& pid=$! ; sleep 1s ; kill -9 $pid
