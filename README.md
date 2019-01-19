# PEERS DOTFILES

This reposetory contain my dotfiles. To install them, simply run the install.sh
file. The program will install firefox, VSCode, i3wm, gdm, polybar, ...
Everything can be found in the install.sh files, in general_installs.sh and in
app_installs.sh.

## Some of the Installs
- Luke Smith's suckless terminal
- Conky
- Firefox
- VSCode
- Neovim
- Pyenv
- Ranger
- Rofi
- i3
- NetworkManager and Bluez
- PulseAudio
- Polybar
- Oh-My-Zsh with Powerlevel9k

## Whats's special about these dotfiles
- i3 config file is split up
- A wallpaper($mod+Shift+w) and colorscheme($mod+Shift+t) switcher
- A nerdfonts font, which is a mixture of FantasqueSansMono and FiraCode
- A quickway of copying the NerdFont Icons ($mod+Shift+i)

## The custom files
- \*.symlink - These files are copied to a location. In the files th elocation is defined at the top line. To add .symlinkfiles, you will have to add the commands to the specific install.sh file. I sadly couldn't go with a universal script as some files have to "ln -s" and others "cp"
- \*.i3 - these files are appended to the i3 config
- \*.zsh - these files are sourced to the zshrc file
- install.sh - These files will all be executed when installing these dotfiles

## How to install
- Clone repository
```
git clone https://github.com/peerlator/dotfiles-arch.git ~/.dotfiles
```
- Delete anything which you don't want to be installed.
- Edit conky/conky.text - Change the cpu visualasations and change ethernet and wifi card names
- Edit polybar/config.polybar - Change the wireless and wired card names
- Export DOTFILES location
```bash
DOTFILES=~/.dotfiles
```
- Run the install.sh file in the main directory 
