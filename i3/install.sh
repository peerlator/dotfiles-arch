# Install i3
sudo pacman --noconfirm -S i3-gaps

mkdir .config/i3/
# Generate Config
for f in ~/.dotfiles/**/*.i3; do (cat "${f}"; echo) >> ~/.config/i3/config; done
