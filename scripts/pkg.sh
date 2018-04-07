#!/bin/sh
# https://github.com/x70b1/polybar-scripts/tree/master/polybar-scripts/updates-arch-combined

updates_arch=$(checkupdates | wc -l)

# if ! updates_aur=$(cower -u 2> /dev/null | wc -l); then
if ! updates_aur=$(trizen -Su --aur --quiet | wc -l); then
    updates_aur=0
fi

updates=$(("$updates_arch" + "$updates_aur"))
total=$(pacman -Qe | wc -l)

echo "$updates / $total"
