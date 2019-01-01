# Install i3
sudo pacman -S i3-gaps

# Generate Config
cat $DOTFILES/i3/*.i3 > ~/.config/i3/config
