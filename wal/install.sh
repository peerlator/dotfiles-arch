yay --noconfirm -S pywal
mkdir ~/.config/wal
rm -rf ~/.config/wal/colorschemes
rm -rf ~/.config/wal/templates
ln -s ~/.dotfiles/wal/colorschemes ~/.config/wal/
ln -s ~/.dotfiles/wal/templates ~/.config/wal/

cp -r ~/.dotfiles/wal/vs-wal ~/.dotfiles/.vscode-oss/extensions/
ln -s ~/.cache/wal/vscode.json ~/.vscode-oss/extensions/vs-wal/themes/vs-wal-color-theme.json