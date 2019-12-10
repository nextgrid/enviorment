#!/bin/bash

if [ "$#" -eq 0 ]; then
	cd /root/workspace && jupyter notebook --port=8888 --ip=0.0.0.0 --allow-root
else
    $1
fi
