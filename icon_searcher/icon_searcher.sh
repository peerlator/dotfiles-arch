selected=$(cat $DOTFILES/icon_searcher/icons.txt | rofi -dmenu  -location 1 -yoffset 4 -width 300 -xoffset 4)
if [[ -n $selected ]]
then
    A="$(cut -d' ' -f2 <<< $selected)"
    echo $A | xclip -selection c
fi