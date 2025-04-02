#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

set -o noclobber

GREEN="\[$(tput setaf 2)\]"
RESET="\[$(tput sgr0)\]"
PS1="$GREEN[\W]$RESET "

source ~/.config/.env
source ~/.config/.scripts
source ~/.config/.aliases

shopt -s autocd
eval "$(fzf --bash)"

eval "$(zoxide init bash)"
