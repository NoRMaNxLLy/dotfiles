#!/bin/bash

# a script for linking the config files

# the script is working, however it's executing ln(1) so many times,
# which make it a little bit slower.
# TODO: find a way to use ln(1) once, instead of calling it multiple times.
#----------------------------------------------------------------------------------------------------------------------

shopt -s extglob    # need this to ignore some files and dirs like ".git"
cd ${0%/*}  # make sure we are in the right Dir.

[[ -d $HOME/olddotfiles ]] || mkdir -p $HOME/olddotfiles/config

# idk why this is working
match='!(.git|config|install.sh|README.md)'
Files=$match

for File in $Files
do
    Src="${PWD}/${File}"
    Dst="${HOME}/.${File}"
    [[ -e $Dst && ! -L $Dst ]] && mv $Dst $HOME/olddotfiles/    # if it exist, and it's not a link, back it up.
    ln -nsf "$Src" "$Dst"
done


#the files in the .config
cd config
#Files=$(find * -maxdepth 0) 
Files=*

for File in $Files
do
    Src="${PWD}/${File}"
    Dst="$HOME/.config/${File}"
    [[ -e $Dst && ! -L $Dst ]] && mv $Dst $HOME/olddotfiles/config/     # same.
    ln -nsf $Src $Dst
done

