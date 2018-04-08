#!/bin/sh

# `pkg.sh` FOR NEOFETCH

arch=$(checkupdates | wc -l)

if ! aur=$(trizen -Su --aur --quiet | wc -l); then
    aur=0
fi

upd=$(("$arch" + "$aur"))
tot=$(pacman -Qe | wc -l)

WH='\033[0;37m'
RD='\033[0;31m'
GR='\033[0;32m'
BG='\033[1;30m'

if [$upd=0]; then
    echo -e "${GR} ${BG}:${WH}$tot"
else
    echo -e "${RD}✖ ${BG}:${WH}$upd / $tot"
fi
