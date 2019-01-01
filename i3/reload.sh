# This is the reload script for i3
# it generates a new config a nd then reload i3

cat $DOTFILES/**/*.i3 > ~/.config/i3/config &&
i3-msg restart
