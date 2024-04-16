# variables
export EDITOR="vim"

# setting up PATH.
#PATH="$PATH:/sbin:/usr/sbin"
[ -d "$HOME/.local/bin" ] && PATH="$HOME/.local/bin:${PATH}"
[ -d "$HOME/scripts" ] && PATH="$HOME/scripts:${PATH}"
export PATH="$PATH:${GOPATH:-$HOME/go}/bin"

#starting X on login
if [ "$(tty)" = "/dev/tty1" ]; then
    #startx &> /dev/null
    sway
else # source bashrc if we are using different tty than tty1.
    [ -f "$HOME/.bashrc" ] && . "$HOME/.bashrc"
fi

# vim: ft=sh
