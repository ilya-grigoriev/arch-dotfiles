sudo pacman -S dhcpcd iwd bind
sudo pacman -S lynx w3m tldr

sudo systemctl enable dhcpcd.service
sudo systemctl start dhcpcd.service
