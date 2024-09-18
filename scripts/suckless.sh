yay -S sent dmenu nsxiv

rm -rf ~/.config/dwm
git clone https://github.com/ilya-grigoriev/dwm ~/.config/dwm
(cd ~/.config/dwm && cp config.def.h config.h && sudo make clean install)

rm -rf ~/.config/st
git clone https://github.com/ilya-grigoriev/st ~/.config/st
(cd ~/.config/st && cp config.def.h config.h && sudo make clean install)
