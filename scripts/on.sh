#!/bin/sh

# DUNST ON FOCUSED

CFG="$HOME/.config/dunst/dunstrc"
OLD=$(xdotool getwindowfocus)
while true
do
    NEW=$(xdotool getwindowfocus)
    if [[ $OLD != $NEW ]]; then

        POS=$(xdotool getwindowfocus getwindowgeometry | \
                  grep Position | \
                  awk '{print $2;}')

        GEO=$(xdotool getwindowfocus getwindowgeometry | \
                  grep Geometry | \
                  awk '{print $2;}')

        posIN=(${POS//,/ })
        geoIN=(${GEO//x/ })
        X=$((${posIN[0]}+${geoIN[0]}))
        Y=$((${posIN[1]}))

        sed -i 's/^geometry =.*/geometry = 32x48-$X+$Y/g' $CFG
        pkill dunst
        dunst --config ~/.config/dunst/dunstrc
        
        OLD=$NEW
    fi
    sleep 0.1
done
