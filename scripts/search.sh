#!/usr/bin/sh

# ROFI => SURF SEARCH

INP=echo $(cat ".history/search_history") | rofi -dmenu 
echo $INP
./history.sh $INP 
if [ ! -e $INP ] ; then
    surf "https://duckduckgo.com/?q=$INP"
fi	
