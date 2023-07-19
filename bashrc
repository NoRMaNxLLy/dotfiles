[ -z "$PS1" ] && return

#--------------------  variables  ----------------------------------

export REPOS="${HOME}/repos"
export MYREPOS="${REPOS}/normanxlly"
export KNSH_DIR="$MYREPOS/knsh"
export DOTFILES="${MYREPOS}/dotfiles"
export CDPATH=".:${MYREPOS}:${HOME}:${REPOS}"
export EDITOR="vim"
export LESSHISTFILE="/dev/null"
export CFLAGS="-Wall -Wextra -Werror"
# colorful manpages
export PAGER="less --use-color -r -R -DErk -DPw -DSrk -Dd+g -Dkr -Ds+m -DuY"
export GREP_COLORS='mt=31;40:ms31;40:mc=31;40:fn=32'
# 0 - 15 for colors, and 16 for reset.
Co=( '\033[3'{0..7}m '\033[1;9'{0..7}m '\033[0m' )
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000
PROMPT_COMMAND="_ps1"

#--------------------  Aliases  -------------------------------------

alias ..='cd ..'
alias free='free -h'
alias cp='cp -v'
alias df='df -h'
alias du='du -h --block-size=M'
alias grep='grep --color=auto'
alias lss='ls -l --color=auto --group-directories-first'
alias ls='ls --color=auto --group-directories-first'
alias startx='startx &> /dev/null'
alias neomutt='TERM=screen-256color neomutt'
alias wget="wget --hsts-file=/dev/null"
alias ip="ip --color=auto"
alias bb='busybox'
alias ?='duck'  # from rwxrob
alias tt='tt -notheme -blockcursor -highlight1 -w 78'  # terminal based typetesting
alias idate='idate --simple | sed -E "s/(.*) - (.*)\(.*\) - (.*)\(.*\)/\2, \3, \1/"'
alias mean='trans -w 72 en:ar'
alias vi='vim'

#--------------------  Functions  -----------------------------------

clear() { printf '\033[2J\033[H' ;}
temp() { cd "$(mktemp -d)" ;}
_empty() { test -z "$1" ;}
__in_repo() { git branch --show-current 2>/dev/null ;}

#---------------------  Bash Options  ------------------------------

# i'm going to vi all the things 💀
set -o vi

# related to using ** in pathname Expansion
shopt -s globstar

# files starting with '.' are included in pathname expansion
shopt -s dotglob

shopt -s histappend

#------------------------------------------------------------------

if command -v dircolors > /dev/null 2>&1; then
    if [[ -r $HOME/.config/dircolors ]]; then
        eval "$(dircolors -b "$HOME/.config/dircolors")"
    fi
fi

#-------------------- my bloated prompt ---------------------------

_ps1() {
    declare -A _p=(
     [u]="\[${Co[13]}\]\u\[${Co[16]}\]"          # user
     [h]="\[${Co[11]}\]\h\[${Co[16]}\]"          # hostname
     [w]="\[${Co[10]}\]\W\[${Co[16]}\]"          # working directory
     [b]="\[${Co[6]}\]\[${branch}\]${Co[16]}"   # git branch
     [d]="\[${Co[4]}\]\$\[${Co[16]}\]"          # $
     [c]="\[${Co[7]}\]:\[${Co[16]}\]"            # :
     [-]="\[${Co[8]}\]-\[${Co[16]}\]"            # -
    [lb]="\[${Co[7]}\][\[${Co[16]}\]"          # [
    [rb]="\[${Co[7]}\]]\[${Co[16]}\]"          # ]
    [lp]="\[${Co[8]}\](\[${Co[16]}\]"          # (
    [rp]="\[${Co[8]}\])\[${Co[16]}\]"          # )
    [at]="\[${Co[7]}\]@\[${Co[16]}\]"           # @
    )
    local branch=$(__in_repo)
    if ! _empty "${branch}"; then
        if [[ "${branch}" == @(main|master) ]]; then
            _p[b]="\[${Co[9]}\]${branch}\[${Co[16]}\]"
        else
            _p[b]="\[${Co[6]}\]${branch}\[${Co[16]}\]"
        fi
        PS1="${_p[lb]}${_p[u]}${_p[at]}${_p[h]}${_p[c]}${_p[w]} ${_p[b]}${_p[rb]}\n${_p[d]} "
    else
        PS1="${_p[lb]}${_p[u]}${_p[at]}${_p[h]}${_p[c]}${_p[w]}${_p[rb]}\n${_p[d]} "
    fi
}

#------------------ testing --------------------
