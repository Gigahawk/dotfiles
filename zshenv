typeset -U path

# Add texlive 2018 to path
path=('/usr/local/texlive/2018/bin/x86_64-linux' $path)
export INFOPATH=$INFOPATH:/usr/local/texlive/2018/texmf-dist/doc/info
export MANPATH=$MANPATH:/usr/local/texlive/2018/texmf-dist/man

# Add scripts folder to path
path=("$HOME/.bin" $path)

# Add pebble sdk to path
path=('~/pebble-dev/pebble-sdk-4.5-linux64/bin' $path)

export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add aws cli to path
export PATH=~/.local/bin:$PATH

# Add Android Studio to path
#export PATH=/opt/android-studio/bin:$PATH

# Add flutter to path
export PATH=/opt/flutter/bin:$PATH

# Add dart to path
export PATH=/opt/flutter/bin/cache/dart-sdk/bin:$PATH
export PATH=~/.pub-cache/bin:$PATH

# Add Processing to path
export PATH=/opt/processing-3.3.6:$PATH

# Add rust binaries to path
export PATH=~/.cargo/bin:$PATH

# Add esp32 toolchain to path
export PATH="$PATH:$HOME/esp/xtensa-esp32-elf/bin"
export IDF_PATH="$HOME/esp/esp-idf"

export PATH="$PATH:$HOME/esp/esp-open-sdk/xtensa-lx106-elf/bin"

# Add flatpak Slack to path
export PATH="$PATH:$HOME/.local/share/flatpak/app/com.slack.Slack/current/active/export/bin/"

# Add flatpak Discord to path
export PATH="$PATH:$HOME/.local/share/flatpak/app/com.discordapp.Discord/current/active/export/bin/"

# Add miniconda to path
#export PATH=~/miniconda3/bin:$PATH
. ~/miniconda3/etc/profile.d/conda.sh

# Add openscad libraries
export OPENSCADPATH=$HOME/.openscad

# Add perl binaries to path
PATH="/home/jasper/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/jasper/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/jasper/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/jasper/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/jasper/perl5"; export PERL_MM_OPT;
