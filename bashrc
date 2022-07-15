# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# a cool way to use Colors ^_^
# 0 - 15 for colors, and 16 for reset.
#Co=( '\033[38;5;'{0..15}m '\033[0m' )
#Co=( '\033[3'{0..7}m '\033[9'{0..7}m '\033[0m' )
Co=( '\033[3'{0..7}m '\033[1;3'{0..7}m '\033[0m' )

#export PS1="\[\033[38;5;69m\]\u\[\e[0m\]: \[\e[38;5;216m\]\W\[\e[0m\] \$ "
#PS1="➜ "
export PS1="\[${Co[7]}\]\u\[\033[0m\]: \[${Co[10]}\]\W\[\033[0m\] \$ "

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Alias definitions.
[ -f ~/.bash_aliases ] && . ~/.bash_aliases

# Functions definitions.
[ -f ~/.bash_functions ] && . ~/.bash_functions

# fzf 
# the directories are not the same on Debian and Arch.
fzfDir="/usr/share/doc/fzf/examples"
if [[ -d $fzfDir ]]; then
    fzfKeys="${fzfDir}/key-bindings.bash"
    fzfComp="${fzfDir}/completion.bash"
else
    fzfDir="/usr/share/fzf"
    if [[ -d $fzfDir ]]; then
        fzfKeys="${fzfDir}/key-bindings.bash"
        fzfComp="${fzfDir}/completion.bash"
    fi
fi
[[ -n $fzfKeys ]] && . "$fzfKeys"
[[ -n $fzfComp ]] && . "$fzfComp"


# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# these weired things makes man pages somewhat colorful..
#export LESSS_TERMCAP_md=$'\e[38;5;69m'
#export LESS_TERMCAP_me=$'\e[0m'
#export LESS_TERMCAP_us=$'\e[38;5;216m'
#export LESS_TERMCAP_ue=$'\e[0m'
#export LESS_TERMCAP_so=$'\e[48;5;234;38;5;69m'
#export LESS_TERMCAP_se=$'\e[0m' 

# variables
export EDITOR="vim"
export LESSHISTFILE="/dev/null"     #lesshst file -_-
export MANWIDTH=100     # width of man pages.

# this is dumb
# [[ $(tty) = /dev/pts/* ]] && tmux_start &> /dev/null
