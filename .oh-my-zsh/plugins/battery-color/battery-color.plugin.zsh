function battery_is_charging() {
! [[ $(acpi 2>/dev/null | grep -c '^Battery.*Discharging') -gt 0 ]]
} 
function battery_pct() {
if (( $+commands[acpi] )) ; then
    echo "$(acpi 2>/dev/null | cut -f2 -d ',' | tr -cd '[:digit:]')"
fi
}

function battery_pct_remaining() {
    if [ ! $(battery_is_charging) ] ; then
        battery_pct
    else
        echo "External Power"
    fi
}

function battery_pct_prompt() {
    b=$(battery_pct_remaining) 
    if [ $b -gt 90 ] ; then
        color='cyan'
    elif [ $b -gt 50 ] ; then
        color='green'
    elif [ $b -gt 20 ] ; then
        color='yellow'
    else
        color='red'
    fi
    if [[ $(acpi 2>/dev/null | grep -c '^Battery.*Discharging') -gt 0 ]] ; then
        t=''
    else
        t='' 
    fi
    echo "%{$fg[$color]%} $t"
}
