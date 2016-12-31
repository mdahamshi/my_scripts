#!/bin/bash
locate .mp3 | grep eng | tr '\n' '\0' | xargs -0 deadbeef 

