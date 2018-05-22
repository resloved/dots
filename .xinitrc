[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
xmodmap -e "clear lock" #disable caps lock switch
xmodmap -e "keysym Caps_Lock = Escape" #set caps_lock as escape
exec i3
