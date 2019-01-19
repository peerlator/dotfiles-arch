zsh

yay --noconfirm -S pyenv
yay --noconfirm -S pyenv-virtualenv

pyenv install 3.6.8

pyenv virtualenv 3.6.8 torch_3.6.8
pyenv shell torch_3.6.8
pip install -r ~/.dotfiles/python/requirements.txt
pip install -r ~/.dotfiles/python/torch.txt
pip install ~/.dotfiles/pywal/

pyenv virtualenv 3.6.8 tensorflow_3.6.8
pyenv shell tensorflow_3.6.8
pip install -r ~/.dotfiles/python/requirements.txt
pip install -r ~/.dotfiles/python/tensorflow.txt
pip install ~/.dotfiles/pywal/