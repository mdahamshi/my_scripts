#!/bin/bash

kill $(pgrep -x $1)
exit 0
