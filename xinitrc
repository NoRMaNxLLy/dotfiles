# wallset -r &
# hsetroot -solid "#1d2021" &
dunst &
picom -b &

# setting up the keyboard
{ [ -f "$HOME/scripts/keyboard_set" ] && $HOME/scripts/keyboard_set ; } &

# idk what is this, something i found on the web about "setting the DPI".
xrandr --fbmm $(xrandr | awk '/\sconnected\s/ {gsub("mm","");print $13$14$15}')

sxhkd &

xrdb ~/.Xresources

exec i3
#{ while :; do date '+%a %b %d [%H:%M]'; sleep 5;done ;} \
#| while read line;do xsetroot -name "$line";done &
#exec dwm

# vim: ft=sh
