#Alias matlab to never run in desktop mode
alias matlab="matlab -nodesktop"

alias android-studio="studio.sh"

# Add alias to restart floating window
alias restart-dropdown="pkill -f 'urxvt -name dropdown -e tmux';urxvt -name dropdown -e tmux &"

# Add alias for ddlc
alias ddlc="/opt/DDLC/DDLC.sh"

# Add alias for tracker
alias tracker="/opt/tracker/tracker.sh"

# Add alias for music conversion
alias flac2mp3all="find . -name \"*.flac\" -exec ffmpeg -i {} -ab 320k -map_metadata 0 -id3v2_version 3 {}.mp3 \\;"

#Clipboard management
alias pbcopy="xclip -selection clipboard"
alias pbpaste="xclip -selection clipboard -o"
alias pbselect="xclip -selection primary -o"
alias pbselectin="xclip -selection primary"

# youtube-dl
alias yt="youtube-dl -ic"
alias yta="youtube-dl -xic"
alias ytm="youtube-dl -x --audio-quality 0 --audio-format mp3"

#Generic shortcuts:
alias music="ncmpcpp"
alias clock="ncmpcpp -s clock"
alias visualizer="ncmpcpp -s visualizer"
alias news="newsbeuter"
alias email="mutt"
alias files="ranger"
alias chat="weechat"
alias audio="ncpamixer"
alias calender="calcurse"

#Some aliases
alias v="vim"
alias ka="killall"
alias suv="sudo vim"
alias r="ranger"
alias ls='ls -hN --color=auto --group-directories-first'
alias g="git"
alias gitup="git push origin master"
alias mkdir="mkdir -pv"
alias crep="grep --color=always"
alias p="sudo pacman"
alias sdn="sudo shutdown now"
alias yt="youtube-dl -ic"
alias yta="youtube-dl -xic"
alias ytd="youtube-dl -x --audio-quality 0 --audio-format mp3"
alias starwars="telnet towel.blinkenlights.nl"
alias nf="clear && neofetch"
alias newnet="sudo systemctl restart NetworkManager"
alias atltime="sudo timedatectl set-timezone America/New_York && i3 restart"
alias tuctime="sudo timedatectl set-timezone America/Phoenix && i3 restart"
alias youtube="youtube-viewer"
alias YT="youtube-viewer"
alias syt="youtube-viewer"
alias Txa="cp ~/Documents/LaTeX/article.tex"
alias Txs="cp ~/Documents/LaTeX/beamer.tex"
alias Txh="cp ~/Documents/LaTeX/handout.tex"
alias TC='texclear'
alias ethspeed="speedometer -r enp0s25"
alias mailsync="bash ~/.config/Scripts/mailsyncloop"
alias wifispeed="speedometer -r wlp2s0"
#alias tr="transmission-remote"
alias debase="sudo umount /home/Shared/Videos & screen.sh l"
alias ref="python ~/.config/Scripts/shortcuts.py && source ~/.bashrc"
alias bars="bash ~/.config/polybar/launch.sh"
alias lsc="screen.sh l"
alias vsc="screen.sh v"
alias dsc="screen.sh d"
alias speedvid="bash ~/.config/Scripts/speedvid.sh"
alias bw="wal -i ~/.config/wall.png"

#Music
alias pause="mpc toggle"
alias next="mpc next"
alias prev="mpc prev"
alias trupause="mpc pause"
alias beg="mpc seek 0%"
alias lilbak="mpc seek -10"
alias lilfor="mpc seek +10"
alias bigbak="mpc seek -120"
alias bigfor="mpc seek +120"

# DO NOT DELETE LMAO
alias h="cd ~ && ls -a"
alias d="cd ~/Documents && ls -a"
alias D="cd ~/Downloads && ls -a"
alias pp="cd ~/Pictures && ls -a"
alias vv="cd ~/Videos && ls -a"
alias m="cd ~/Music && ls -a"
alias b="cd ~/Books && ls -a"
alias s="cd ~/.config/Scripts && ls -a"
alias r="cd / && ls -a"
alias cf="cd ~/.config && ls -a"
alias cfb="vim ~/.config/Scripts/bashrc"
alias cfz="vim ~/.zshrc"
alias cfv="vim ~/.config/Scripts/vimrc"
alias cfr="vim ~/.config/ranger/rc.conf.base"
alias cfi="vim ~/.config/i3/config"
alias cfq="vim ~/.config/qutebrowser/config.py"
alias cfm="vim ~/.config/mutt/muttrc"
alias cfM="vim ~/.config/moc/keymap"
alias cff="vim ~/.config/Scripts/folders"
alias cfc="vim ~/.config/Scripts/configs"
alias cft="vim ~/.config/termite/config"
alias cfT="vim ~/.config/Scripts/tmux.conf"
alias eb="vim ~/Documents/LaTeX/uni.bib"
alias cv="vim ~/Documents/LaTeX/cv.tex"
alias cfa="vim ~/.config/mutt/aliases"
alias cfp="vim ~/.config/polybar/config"
alias cfd="vim ~/.Xdefaults"
# DO NOT DELETE LMAO

