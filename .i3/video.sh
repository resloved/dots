#!/bin/bash
ffcast -s % ffmpeg -y -f x11grab -show_region 1 -framerate 60 \
    -video_size %s -i %D+%c -codec:v huffyuv                  \
    -vf crop="iw-mod(iw\\,2):ih-mod(ih\\,2)" out.avi
