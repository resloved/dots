#!/bin/sh

# INTERNET CHECK

CUR=false
RATE=30

while [ true ]
do
    PING=$(ping -c 1 8.8.8.8 | grep '100% packet loss') 
    if [[ -z $PING && $CUR = false ]]; then
        dunstify -u critical -r 5 ""
        CUR=true
    elif [[ -n $PING && $CUR = true ]]; then
        dunstify -u critical -r 5 "✖"
        CUR=false
    fi
    sleep $RATE
done
