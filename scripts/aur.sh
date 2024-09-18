if [[ ! $(which yay) ]]; then
	sudo rm -rf /tmp/yay
	(cd /tmp && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && cd .. && sudo rm -rf yay)
fi

