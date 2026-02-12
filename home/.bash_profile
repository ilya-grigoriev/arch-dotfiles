#
# ~/.bash_profile
#
stty -ixon

export PATH=$PATH:$HOME/.local/bin:$HOME/bin

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	# slstatus -s | dwl
	export WLR_RENDERER=vulkan
	sway
fi

export PATH=$PATH:/home/ilya/.spicetify

. "$HOME/.local/share/../bin/env"
