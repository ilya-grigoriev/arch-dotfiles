sudo pacman -S bluez bluez-utils pulseaudio-bluetooth

sudo systemctl --global enable pulseaudio.service
sudo systemctl --global enable pulseaudio.socket
