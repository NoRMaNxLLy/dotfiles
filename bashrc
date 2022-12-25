[ -z "$PS1" ] && return

#--------------------  variables  ----------------------------------

export REPOS="${HOME}/repos"
export MYREPOS="${REPOS}/normanxlly"
export DOTFILES="${MYREPOS}/dotfiles"
export CDPATH=".:${MYREPOS}:${REPOS}"
export EDITOR="vim"
export LESSHISTFILE="/dev/null"

# width of man pages.
# export MANWIDTH=79

# 0 - 15 for colors, and 16 for reset.
Co=( '\033[3'{0..7}m '\033[9'{0..7}m '\033[0m' )

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
#alias lss='exa -l --color=auto --group-directories-first'
alias lss='ls -l --color=auto --group-directories-first'
alias ls='ls --color=auto --group-directories-first'
alias startx='startx &> /dev/null'
alias neomutt='TERM=screen-256color neomutt'
alias wget="wget --hsts-file=/dev/null"
alias ip="ip --color=auto"
alias bb='busybox'

#--------------------  Functions  -----------------------------------

_empty() {
    test -z "$1"
}

__in_repo() {
    git branch --show-current 2>/dev/null
}

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
     [u]="\[${Co[11]}\]\u\[${Co[16]}\]"          # user
     [h]="\[${Co[12]}\]\h\[${Co[16]}\]"          # hostname
     [w]="\[${Co[10]}\]\W\[${Co[16]}\]"          # working directory
     [b]="\[${Co[14]}\]\[${branch}\]${Co[16]}"   # git branch
     [d]="\[${Co[14]}\]\$\[${Co[16]}\]"          # $
     [c]="\[${Co[8]}\]:\[${Co[16]}\]"            # :
     [-]="\[${Co[8]}\]-\[${Co[16]}\]"            # -
    [lb]="\[${Co[9]}\][\[${Co[16]}\]"          # [
    [rb]="\[${Co[9]}\]]\[${Co[16]}\]"          # ]
    [lp]="\[${Co[8]}\](\[${Co[16]}\]"          # (
    [rp]="\[${Co[8]}\])\[${Co[16]}\]"          # )
    [at]="\[${Co[8]}\]@\[${Co[16]}\]"           # @
    )
    local branch=$(__in_repo)
    if ! _empty "${branch}"; then
        if [[ "${branch}" == @(main|master) ]]; then
            _p[b]="\[${Co[9]}\]${branch}\[${Co[16]}\]"
        else
            _p[b]="\[${Co[14]}\]${branch}\[${Co[16]}\]"
        fi
        PS1="${_p[lb]}${_p[u]}${_p[at]}${_p[h]}${_p[c]}${_p[w]}${_p[rb]}${_p[-]}${_p[lp]}${_p[b]}${_p[rp]}${_p[d]} "
    else
        PS1="${_p[lb]}${_p[u]}${_p[at]}${_p[h]}${_p[c]}${_p[w]}${_p[rb]}${_p[d]} "
    fi
}

#------------------ testing --------------------
