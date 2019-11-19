#!/bin/bash

Xvfb :1 -screen 0 1024x768x24 -ac +extension GLX +render -noreset &> xvfb.log &
export DISPLAY=:1

if [ "$#" -eq 0 ]; then
	cd /root/workspace && jupyter notebook --port=8888 --ip=0.0.0.0 --allow-root
else
    $1
fi
