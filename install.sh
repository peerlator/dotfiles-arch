# permission
echo "setting up permissions"
sudo chmod +x $DOTFILES/**/*.sh
sudo chmod +x $DOTFILES/*.sh
sudo chmod +x $DOTFILES/scripts/*
# Install files
echo "Installing general things (can be found in general_installs.sh)"
$DOTFILES/general_installs.sh
$DOTFILES/app_installs.sh
export PATH=$PATH:$DOTFILES/scripts

echo "Installing specific things (can be found in the install.sh files)"
for filename in $(echo $DOTFILES/**/install.sh | tr " " "\n")
do
    sh $filename
done
