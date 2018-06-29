typeset -U path

# Add texlive 2017 to path
path=('/usr/local/texlive/2017/bin/x86_64-linux' $path)
export INFOPATH=$INFOPATH:/usr/local/texlive/2017/texmf-dist/doc/info
export MANPATH=$MANPATH:/usr/local/texlive/2017/texmf-dist/man

# Add scripts folder to path
path=("$HOME/.bin" $path)

# Add pebble sdk to path
path=('~/pebble-dev/pebble-sdk-4.5-linux64/bin' $path)

export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

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
