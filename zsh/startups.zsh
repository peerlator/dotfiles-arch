ZSH_THEME="powerlevel9k/powerlevel9k"
plugins=(
    zsh-autosuggestions
    git
    zsh-syntax-highlighting
    zsh-completions
)
export PATH=$PATH:$DOTFILES/scripts
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
autoload -U compinit && compinit
