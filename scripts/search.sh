#!/usr/bin/sh

# ROFI => SURF SEARCH

rofi -dmenu | \
    xargs -I{} surf https://duckduckgo.com/?q={}
