#!/bin/bash

shopt -s extglob
cd ${0%/*}

_symlink() {
    ln -nsf "$1" "$2"
}

if (( $# > 0 )); then
    for i in "$@"; do
        i="${i%/}"
        [[ -e "${PWD}/${i}" ]] || continue
        src="${PWD}/${i}"
        dst="${HOME}/.${i}"
        _symlink "${src}" "${dst}"
    done
    exit 0
fi

# idk why this is working
match='!(.git|config|install.sh|README.md|scripts) config/*'

for i in ${match}; do
    src="${PWD}/${i}"
    dst="${HOME}/.${i}"
    _symlink "${src}" "${dst}"
done

# the script directory
_symlink "${PWD}/scripts" "${HOME}/scripts"
