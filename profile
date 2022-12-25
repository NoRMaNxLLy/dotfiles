# variables
export EDITOR="vim"
export TERMINAL="st"
export BROWSER="qutebrowser"

# setting up PATH.
PATH="$PATH:/sbin:/usr/sbin"
[ -d "$HOME/.local/bin" ] && PATH="$HOME/.local/bin:${PATH}"
[ -d "$HOME/scripts" ] && PATH="$HOME/scripts:${PATH}"

#starting X on login
if [ "$(tty)" = "/dev/tty1" ]; then
    #light -I
    startx &> /dev/null
    # exiting the window manager will exit the login shell
    # light -S 5
#    exit 0
else # source bashrc if we are using different tty than tty1.
    [ -f "$HOME/.bashrc" ] && . "$HOME/.bashrc"
fi

# vim: ft=sh
