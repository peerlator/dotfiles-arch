# Yay
mkdir ~/builds
cd ~/builds
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Bluetooth
sudo pacman -S bluez bluez-utils
sudo systemctl enable bluetooth.service

# Audio
sudo pacman -S pulseaudio-alsa pulseaudio-bluetooth pulsemixer

# Notifications
sudo pacman -S dunst

# rsync
sudo pacman -S rsync

# i3lock-fancy
yay -S i3lock-fancy-multimonitor-git

# Network
sudo pacman -S networkmanager
sudo systemctl enable NetworkManager.service

# Neofetch
sudo pacman -S neofetch

# Display Manager
sudo pacman -S gnome-session gnome-shell gdm
sudo systemctl enable gdm.service

# Font
mkdir ~/.fonts
cd ~/.fonts
git clone https://github.com/peerlator/FiraCodeFantasqueSansMonoNerdfonts.git
mv **/*.ttf .
