#!/bin/bash -ue

sudo docker build -t e-pity .
sudo docker run -u $UID -v ~/Documents:/efile -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY e-pity:latest
