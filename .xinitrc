xrdb -merge ~/.Xresources
xmodmap -e "clear lock"
xmodmap -e "keysym Caps_Lock = Escape"
exec i3
