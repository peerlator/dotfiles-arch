selected=$(find $DOTFILES/themes -type f \( -iname "*.theme" \) -printf "%f\n" | rofi -location 1 -yoffset 4 -width 300 -xoffset 4 -dmenu)

if [[ -n $selected ]]
then
    xrdb $DOTFILES/themes/$selected 
    rm -f $DOTFILES/conky/conkyrc && cat $DOTFILES/conky/themes/$selected $DOTFILES/conky/conky-text > $DOTFILES/conky/conkyrc
    $DOTFILES/vim/change_theme.sh $selected
    $DOTFILES/i3/reload.sh

fi