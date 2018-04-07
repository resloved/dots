#!/bin/sh

LOW=15
SENT=false
RATE=1

while [ true ]
do
PER=$(cat /sys/class/power_supply/BAT1/capacity)
if [[ $SENT == false ]]; then
    if [[ $PER < $LOW ]]; then
        SENT=true
        dunstify -u critical -r 5 "✖"
    fi
elif [[ $PER > $LOW ]]; then
    SENT=false
fi
sleep $RATE
done
