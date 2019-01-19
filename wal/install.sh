yay -S pywal
rm -rf ~/.config/wal/colorschemes
rm -rf ~/.config/wal/templates
ln -s $DOTFILES/wal/colorschemes ~/.config/wal/
ln -s $DOTFILES/wal/templates ~/.config/wal/

cp -r $DOTFILES/wal/vs-wal $HOME/.vscode-oss/extensions/
ln -s ~/.cache/wal/vscode.json ~/.vscode-oss/extensions/vs-wal/themes/vs-wal-color-theme.json