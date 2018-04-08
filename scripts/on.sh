#!/bin/sh

# DUNST ON FOCUSED

while true
do
    FOC='xdotool getwindowfocus getwindowgeometry'
    NEW=$($FOC)
    if [[ -z $OLD || $OLD != $NEW ]]; then

        POS=$($FOC | grep Position | awk '{print $2;}')
        GEO=$($FOC | grep Geometry | awk '{print $2;}')

        posIN=(${POS//,/ })
        geoIN=(${GEO//x/ })

        X=$((${posIN[0]}+${geoIN[0]}))
        Y=$((${posIN[1]}))

	pkill dunst
        dunst -geom "32x5+$X+$Y" &
        
        OLD=$NEW
    fi
done
