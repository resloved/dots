#!/bin/sh

# LOCK

dunstify ""
sleep 0.01
scrot /tmp/screen.png
i3lock -u -i /tmp/screen.png
rm /tmp/screen.png
