#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/.env
source ~/.scripts

alias ls='ls --color=auto'
alias l="ls -lah"
alias z="zoxide"
alias v="vim"
alias nv="nvim"

alias s="sudo pacman -S"
alias ss="sudo pacman -Ss"
alias r="sudo pacman -R"
alias u="sudo pacman -Syu"

alias ys="yay -S"
alias yss="yay -Ss"
alias yr="yay -R"
alias yu="yay -Syu"

alias cls="clear"
alias lg="lazygit"
alias ff="fastfetch"
alias info="info --vi-keys"

alias '?'=duck

set -o noclobber

GREEN="\[$(tput setaf 2)\]"
RESET="\[$(tput sgr0)\]"
PS1="$GREEN[\W]$RESET "

shopt -s autocd
eval "$(fzf --bash)"

set -o vi

eval "$(zoxide init bash)"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
