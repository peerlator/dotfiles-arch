selected=$(find $DOTFILES/wallpapers -type f \( -iname "*.png" -and ! -iname "current.png" \) -printf "%f\n" | rofi -no-config -dmenu  -location 1 -yoffset 4 -width 300 -xoffset 4 -color-normal "#282828, #ebdbb2,#282828, #504945, #ebdbb2" -color-window "#282828, #282828, #504945" -hide-scrollbar)

rm -f $DOTFILES/wallpapers/current.png
cp $DOTFILES/wallpapers/$selected $DOTFILES/wallpapers/current.png
feh --bg-scale $DOTFILES/wallpapers/current.png
