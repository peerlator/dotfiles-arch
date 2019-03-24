# yay
mkdir $HOME/builds
git clone https://aur.archlinux.org/yay.git $HOME/builds/yay
(cd $HOME/builds/yay && makepkg -si)

# Bluetooth
sudo pacman --noconfirm -S bluez bluez-utils
sudo systemctl enable bluetooth.service

# Audio
sudo pacman --noconfirm -S pulseaudio-alsa pulseaudio-bluetooth pulsemixer

# Notifications
sudo pacman --noconfirm -S dunst
ln -s $HOME/.cache/wal/dunstrc $HOME/.config/dunst/dunstrc

# rsync
sudo pacman --noconfirm -S rsync

# i3lock-fancy
yay --noconfirm -S i3lock-fancy-multimonitor-git

# Network
sudo pacman --noconfirm -S networkmanager
sudo systemctl enable NetworkManager.service

# Neofetch
sudo pacman --noconfirm -S neofetch

# Display Manager
sudo pacman --noconfirm -S gnome-session gnome-shell gdm
sudo systemctl enable gdm.service

# Font
mkdir $HOME/.fonts
git clone https://github.com/peerlator/FiraCodeFantasqueSansMonoNerdfonts.git $HOME/.fonts/
sudo cp *.ttf /usr/share/fonts/TTF/

# compton
yay --noconfirm -S compton

# playerctl
yay --noconfirm -S playerctl

# Unclutter
yay --noconfirm -S unclutter

yay --noconfirm -S numix-icon-theme-git lxappearance

yay --noconfirm -S lsd