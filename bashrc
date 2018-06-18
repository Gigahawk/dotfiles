stty -ixon

export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

# Add texlive 2017 to path
export PATH=/usr/local/texlive/2017/bin/x86_64-linux:$PATH
export INFOPATH=$INFOPATH:/usr/local/texlive/2017/texmf-dist/doc/info
export MANPATH=$MANPATH:/usr/local/texlive/2017/texmf-dist/man

# Add scripts folder to path
export PATH=~/.bin:$PATH

# Add pebble sdk to path
export PATH=~/pebble-dev/pebble-sdk-4.5-linux64/bin:$PATH

shopt -s autocd #Allows you to cd into directory merely by typing the directory name.

#Check the weather:
weath() { curl wttr.in/$1 ;}
#Install an AUR package manually (for Parabola to get AUR access):
aurinstall() { curl -O https://aur.archlinux.org/cgit/aur.git/snapshot/$1.tar.gz && tar -xvf $1.tar.gz && cd $1 && makepkg --noconfirm -si && cd .. && rm -rf $1 $1.tar.gz ;}
desksync() { rsync -avr --rsh='ssh -p443' $(realpath $1)/ $DESKIP:$(realpath $1);}
deskget() { rsync -avr --rsh='ssh -p443' $DESKIP:$(realpath $1) $(realpath $1)/;}
vrs() { rsync $(realpath $1) $(realpath $1 | sed 's/\/luke\//\/luke\/Repos\/voidrice\//g');}
bl() { convert $@ -resize 1440x1080\> bl_$@ ;}
CF() { cd ~/.config/$1 && ls ;}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add aws cli to path
export PATH=~/.local/bin:$PATH

# Add Telegram to path
export PATH=/opt/Telegram/:$PATH

# Add Android Studio to path
export PATH=/opt/android-studio/bin:$PATH

# Add flutter to path
export PATH=/opt/flutter/bin:$PATH

# Add dart to path
export PATH=/opt/flutter/bin/cache/dart-sdk/bin:$PATH
export PATH=~/.pub-cache/bin:$PATH

# Add Processing to path
export PATH=/opt/processing-3.3.6:$PATH

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi
