#!/usr/bin/env bash

MON="DP-2"

cvt -r 1920 1080
xrandr --newmode "1920x1080R" 138.50 1920 1968 2000 2080 1080 1083 1088 1111 +hsync -vsync
xrandr --addmode $MON 1920x1080R
xrandr --output $MON --mode 1920x1080R
