# Load antigen
source $HOME/.dotfiles/antigen/bin/antigen.zsh

# Enable vim command editing
autoload -U edit-command-line

# Use Oh My ZSH
antigen use oh-my-zsh

antigen bundle git
antigen bundle pip
antigen bundle node
antigen bundle npm
antigen bundle command-not-found

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

antigen theme subnixr/minimal

antigen apply

if [ -f ~/.zaliases ]; then
  source ~/.zaliases
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval $(thefuck --alias)
