#!/bin/bash
#
#   This file echoes four gradients with 24-bit color codes
#   to the terminal to demonstrate their functionality.
#   The foreground escape sequence is ^[38;2;<r>;<g>;<b>m
#   The background escape sequence is ^[48;2;<r>;<g>;<b>m
#   <r> <g> <b> range from 0 to 255 inclusive.
#   The escape sequence ^[0m returns output to default

setBackgroundColor()
{
    local r=$1
    local g=$2
    local b=$3

    printf "\x1b[48;2;%d;%d;%dm" $r $g $b
}

resetOutput()
{
    printf "\x1b[0m"
}

# Gives a color $1/255 % along HSV
# Who knows what happens when $1 is outside 0-255
# Echoes "$red $green $blue" where
# $red $green and $blue are integers
# ranging between 0 and 255 inclusive
rainbowColor()
{ 
    h=$(($1/43))
    f=$(($1-43*$h))
    t=$(($f*255/43))
    q=$((255-t))

    case "$h" in
        0) echo "255 $t 0";;
        1) echo "$q 255 0";;
        2) echo "0 255 $t";;
        3) echo "0 $q 255";;
        4) echo "$t 0 255";;
        5) echo "255 0 $q";;
        *)
            # execution should never reach here
            echo "0 0 0"
    esac
}

for i in {0..255}; do
    setBackgroundColor $i 0 0
    printf ' '
done
printf '\n'

for i in {0..255}; do
    setBackgroundColor 0 $i 0
    printf ' '
done
printf '\n'

for i in {0..255}; do
    setBackgroundColor 0 0 $i
    printf ' '
done
printf '\n'

for i in {0..255}; do
    setBackgroundColor $(rainbowColor $i)
    echo -n " "
done
resetOutput
printf '\n'
