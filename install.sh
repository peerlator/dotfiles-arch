mkdir $HOME/.config
# permission
echo "setting up permissions"
sudo chmod +x $HOME/.dotfiles/**/*.sh
sudo chmod +x $HOME/.dotfiles/*.sh
sudo chmod +x $HOME/.dotfiles/scripts/*
# Install files
echo "Installing general things (can be found in general_installs.sh)"
source $HOME/.dotfiles/general_installs.sh
source $HOME/.dotfiles/app_installs.sh
export PATH=$PATH:$DOTFILES/scripts

echo "Installing specific things (can be found in the install.sh files)"
for filename in $(echo $HOME/.dotfiles/**/install.sh | tr " " "\n")
do
    source $filename
done
