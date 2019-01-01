export DOTFILES=~/.dotfiles
export HOME=~

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

echo "Linking configuration files"
for filename in $(echo $DOTFILES/**/*.symlink | tr " " "\n")
do
    target=$(head -1 $filename | tr " " "\n" | grep "/")
    $(cp $filename ${target/"~"/$HOME})
done
