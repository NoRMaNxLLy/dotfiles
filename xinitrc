# wallset -r &
hsetroot -solid "#000000" &
dunst &
picom -b &
sxhkd &
xss-lock -q -- scrlock &
redshift -l 32.3256:15.0993 -l manual &

# setting up the keyboard
[ -f "$HOME/scripts/keyboard_set" ] && $HOME/scripts/keyboard_set

# idk what is this, something i found on the web about "setting the DPI".
xrandr --fbmm $(xrandr | awk '/\sconnected\s/ {gsub("mm","");print $13$14$15}')

xset s off
xset dpms 0 0 600

xrdb ~/.Xresources

exec i3

# vim: ft=sh
