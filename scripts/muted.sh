#!/bin/sh

# MUTED/UNMUTED NOTIFICATION

sleep 0.1
PULL=$(amixer sget Master | grep off)

if [[ -z $PULL ]]; then
    dunstify -u low -r 7 ""
else
    dunstify -u low -r 7 ""
fi
