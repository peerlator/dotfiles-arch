# Install neovim
yay --noconfirm -S neovim

mkdir ~/.config/nvim
ln -s $DOTFILES/vim/init.vim.symlink ~/.config/nvim/init.vim