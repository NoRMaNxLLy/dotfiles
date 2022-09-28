#/bin/bash

Dec=$1
if [[ -z $Dec ]]; then
    printf "${0}\tnumber\n"
    exit
fi

while (( Dec >= 1 )); do
    rem+=( $((Dec % 2)) )   #store 1's and 0's in an array.
    Dec=$((Dec / 2))
done

for ((i=${#rem[@]}; i >= 0 ;i--)); do
    printf "${rem[$i]}"
done
