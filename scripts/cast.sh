#!/bin/bash

# SIMPLE FFMPEG SCREENCAST

OFFS=""
# Flags
# -s --selection
if [ $1 == "-s" ] || [ $1 == "--selection" ] ; then
    read -r X Y W H < <(slop -f "%x %y %w %h")
    SIZE=$W"x"$H
    OFFS="+"$X","$Y
# Screen
else
    SIZE=$(xdpyinfo | grep dimensions | awk '{print $2;}')
fi

ffmpeg -y \
       -f x11grab \
       -framerate 30 \
       -s $SIZE \
       -i :0.0$OFFS \
       ~/videos/casts/out.mkv
