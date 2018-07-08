#!/usr/bin/sh

# ROFI => SURF SEARCH

rofi -dmenu -theme entry | \
    xargs -I{} chromium --new-window https://duckduckgo.com/?q={}
