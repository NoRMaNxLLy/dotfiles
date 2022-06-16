# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
#if [ -n "$BASH_VERSION" ]; then
#    # include .bashrc if it exists
#    if [ -f "$HOME/.bashrc" ]; then
#	. "$HOME/.bashrc"
#    fi
#fi

# set PATH so it includes user's private bin if it exists
#if [ -d "$HOME/bin" ] ; then
#    PATH="$HOME/bin:$PATH"
#fi

# variables
export EDITOR="vim"
export TERMINAL="xfce4-terminal"
export BROWSER="qutebrowser"

# setting up PATH.
PATH="$PATH:/sbin:/usr/sbin"
[ -d "$HOME/.local/bin" ] && PATH="$HOME/.local/bin:$PATH"
[ -d "$HOME/Scripts" ] && PATH="$PATH:$HOME/Scripts"

#starting X on login
if [ "$(tty)" = "/dev/tty1" ]; then
    light -I
    startx &> /dev/null
    # exiting the window manager will exit the login shell
    light -S 5
#    exit 0
else # source bashrc if we are using different tty than tty1.
    [ -f "$HOME/.bashrc" ] && . "$HOME/.bashrc"
fi
