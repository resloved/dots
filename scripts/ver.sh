#!/bin/sh

# COMPARE PKG VERSIONS

WH='\033[0;37m'
RD='\033[0;31m'
GR='\033[0;32m'
BG='\033[1;30m'

OLD=$(pacman -Qi $1 | grep Version | awk '{print $3;}')
NEW=$(pacman -Si $1 | grep Version | awk '{print $3;}')

if [[ $OLD == $NEW ]]; then
    echo -e "${GR} ${BG} ${WH}$OLD"
else
    echo -e "${RD} ${BG} ${WH}$OLD"
fi

