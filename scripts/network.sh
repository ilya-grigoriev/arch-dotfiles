sudo pacman -S dhcpcd iwd
sudo pacman -S lynx w3m tldr

sudo systemctl enable dhcpcd.service
sudo systemctl start dhcpcd.service
