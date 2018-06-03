dbus-update-activation-environment --systemd DISPLAY
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets)
#export SSH_AUTH_SOCK
export GPG_AGENT_INFO
exec ck-launch-session i3
xset +fp /home/jasper/.fonts
xset fp rehash
xset -b

#disable screen saver blanking
xset s off
