# Load antigen

source $HOME/.dotfiles/antigen/bin/antigen.zsh

# Use Oh My ZSH
antigen use oh-my-zsh

antigen bundle git
antigen bundle zsh-users/zsh-autosuggestions

antigen bundle node
antigen bundle npm

antigen theme subnixr/minimal

antigen apply
