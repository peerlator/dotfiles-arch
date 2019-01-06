
pyenv shell torch_3.6.8
pip install --upgrade pip
pip install --upgrade -r $DOTFILES/python/requirements.txt
pip install --upgrade -r $DOTFILES/python/torch.txt

pyenv shell tensorflow_3.6.8
pip install --upgrade pip
pip install --upgrade -r $DOTFILES/python/requirements.txt
pip install --upgrade -r $DOTFILES/python/tensorflow.txt