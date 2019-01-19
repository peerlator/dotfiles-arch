mkdir ~/.config
# permission
echo "setting up permissions"
sudo chmod +x ~/.dotfiles/**/*.sh
sudo chmod +x ~/.dotfiles/*.sh
sudo chmod +x ~/.dotfiles/scripts/*
# Install files
echo "Installing general things (can be found in general_installs.sh)"
~/.dotfiles/general_installs.sh
~/.dotfiles/app_installs.sh
export PATH=$PATH:$DOTFILES/scripts

echo "Installing specific things (can be found in the install.sh files)"
for filename in $(echo ~/.dotfiles/**/install.sh | tr " " "\n")
do
    sh $filename
done
