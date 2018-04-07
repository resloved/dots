#!/bin/sh

# PLAY/PAUSE NOTIFICATION

sleep 0.1
PULL=$(playerctl status)

if [[ $PULL == "Paused" ]]; then
    dunstify -r 7 ""
else
    dunstify -r 7 ""
fi
