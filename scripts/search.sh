#!/usr/bin/sh

# ROFI => SURF SEARCH

rofi -dmenu -theme entry | \
    xargs -I{} surf https://duckduckgo.com/?q={}
