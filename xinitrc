dbus-update-activation-environment --systemd DISPLAY
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets)
#export SSH_AUTH_SOCK
export GPG_AGENT_INFO
xset +fp /home/jasper/.fonts
xset fp rehash
xset -b

#Disable screen turning off
xset dpms 0 0 0

#disable screen saver blanking
xset s off

eval "$(dbus-launch --sh-syntax --exit-with-session)"
exec ck-launch-session i3
