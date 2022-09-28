#!/bin/bash

# xfce terminal transparency changer.

config="$HOME/.config/xfce4/terminal/terminalrc"

while IFS='=' read key value; do
    case $key in
        BackgroundDarkness)
            now=$value
            break ;;
    esac
done < $config

# idk how to these floating numbers right @_@
case $1 in
    up)
        new=$(echo "$now+0.05" | bc);;
    down)
        new=$(echo "$now-0.05" | bc);;
esac
sed -i "/^BackgroundDarkness/s/${now}/${new}/" $config 
