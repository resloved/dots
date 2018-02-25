#!/bin/bash

TMP=/tmp/picture.png
IMG=~/pictures/wallpapers/fit_moon.png
LOCK=~/pictures/smalllock.png

cp $IMG $TMP
convert $TMP $LOCK -gravity center -composite -matte $TMP
i3lock -u -i $TMP
rm $TMP
