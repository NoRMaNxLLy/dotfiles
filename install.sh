#!/bin/bash

# a script for linking the config files

# the script is working, however it's executing ln(1) so many times,
# which make it a little bit slower.
# TODO: find a way to use ln(1) once, instead of calling it multiple times.
#----------------------------------------------------------------------------------------------------------------------

shopt -s extglob
cd ${0%/*}  # make sure we are in the right Dir.

[[ -d $HOME/olddotfiles ]] || mkdir -p $HOME/olddotfiles/config

# idk why this is working
match='!(.git|config|install.sh|README.md|scripts)'
files="${match}"

for file in ${files}; do
    src="${PWD}/${file}"
    dst="${HOME}/.${file}"
    [[ -e ${dst} && ! -L ${dst} ]] && mv ${dst} ${HOME}/olddotfiles/    # if it exist, and it's not a link, back it up.
    ln -nsf "${src}" "${dst}"
done

# the script directory
ln -nsf "${PWD}/scripts" "${HOME}/scripts"

#the files in the .config
cd config
#files=$(find * -maxdepth 0) 
files=*

for file in ${files}
do
    src="${PWD}/${file}"
    dst="$HOME/.config/${file}"
    [[ -e ${dst} && ! -L ${dst} ]] && mv ${dst} ${HOME}/olddotfiles/config/     # same.
    ln -nsf ${src} ${dst}
done

