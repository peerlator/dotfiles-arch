selected=$(find $DOTFILES/wallpapers -type f \( -iname "*.png" -and ! -iname "current.png" \) -printf "%f\n" | rofi -dmenu  -location 1 -yoffset 4 -width 300 -xoffset 4)

rm -f $DOTFILES/wallpapers/current.png
cp $DOTFILES/wallpapers/$selected $DOTFILES/wallpapers/current.png
feh --bg-scale $DOTFILES/wallpapers/current.png
