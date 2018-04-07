#!/bin/sh

# TIMER NOTIFICATIONS

STR=
END=

DEF=${1:-60}
COL=${2:-af5fff}

dunstify "<span fgcolor='#$COL'>$STR</span>"
sleep $DEF
dunstify -u critical "<span fgcolor='#$COL'>$END</span>"
