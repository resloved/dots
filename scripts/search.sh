#!/bin/sh

# ROFI => SURF SEARCH

echo "" | rofi -dmenu | xargs -I{} surf https://duckduckgo.com/?q={}
