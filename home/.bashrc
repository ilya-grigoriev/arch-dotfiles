#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/.config/.env
source ~/.config/.scripts
source ~/.config/.aliases

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

# This line is automatically inserted by the installer of ask.sh
eval "$(ask-sh --init)"

bind -x '"\C-b":"$(history 1 | cut -c 8-) | less"'
