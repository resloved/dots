#!/usr/bin/sh
card="wlp3s0"
conf="~/.config/wpa_supplicant/wifi.conf"
sudo wpa_supplicant -B -i $card -c $conf
sudo dhcpcd

SSID=$(iw dev ${card} link | grep "SSID" | xargs)
if [[ SSID != "" ]]; then
    echo "$SSID"
elif
    echo "NONE"
fi
