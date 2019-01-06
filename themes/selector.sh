light_or_dark=$(echo "Light
Dark
Wallpaper" | rofi -location 1 -yoffset 4 -width 300 -xoffset 4 -dmenu)
mv $(which wal) /usr/bin
if [ $light_or_dark = "Dark" ] 
then
    selected=$(find $DOTFILES/pywal/pywal/colorschemes/dark/ -type f \( -iname "*.json" \) -printf "%f\n" | rofi -location 1 -yoffset 4 -width 300 -xoffset 4 -dmenu)

    if [[ -n $selected ]]
    then
        wal --theme $DOTFILES/pywal/pywal/colorschemes/dark/$selected
    fi
elif [ $light_or_dark = "Light" ] 
then
    selected=$(find $DOTFILES/pywal/pywal/colorschemes/light/ -type f \( -iname "*.json" \) -printf "%f\n" | rofi -location 1 -yoffset 4 -width 300 -xoffset 4 -dmenu)
    if [[ -n $selected ]]
    then
        wal --theme $DOTFILES/pywal/pywal/colorschemes/light/$selected
    fi
elif [ $light_or_dark = "Wallpaper" ] 
then
    wal -i $DOTFILES/wallpapers/current.png
fi
