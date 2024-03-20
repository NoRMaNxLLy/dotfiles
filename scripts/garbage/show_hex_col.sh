#!/bin/bash

read color

color="${color#\#}"
printf -v R "%d" 0x"${color:0:2}"
printf -v G "%d" 0x"${color:2:2}"
printf -v B "%d" 0x"${color:4:2}"

printf "\033[48;2;%d;%d;%dm%0$(tput cols)s\033[0m\n" $R $G $B
