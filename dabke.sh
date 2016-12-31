#!/bin/bash
find /data/Music/Music/ -name '*dabke*' -print0 | xargs -0  deadbeef
