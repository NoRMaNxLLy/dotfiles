
# I'll keep these here for now...
# these commands should be combined with xrandr --fbmm 

# this one is mine ^_^
xrandr | awk '/\sconnected\s/ {gsub("mm","");print $13$14$15}'

xrandr | sed -n -E '/ connected / s/.* ([0-9]+)mm x ([0-9]+)mm/\1x\2/p'
