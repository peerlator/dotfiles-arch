# Install i3
sudo pacman --noconfirm -S i3-gaps

# Generate Config
for f in $DOTFILES/**/*.i3; do (cat "${f}"; echo) >> ~/.config/i3/config; done
