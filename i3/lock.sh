#!/bin/bash
mocp -P
scrot /tmp/screen.png
convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
#convert /tmp/screen.png -paint 3 -modulate 80 /tmp/screen.png
#convert /tmp/screen.png -paint 3 /tmp/screen.png
#convert /tmp/screen.png -blur 4x7 /tmp/screen.png
#[[ -f ~/.config/i3/lock.png ]] && convert /tmp/screen.png  ~/.config/i3/lock.png -gravity center -composite -matte /tmp/screen.png
i3lock -i /tmp/screen.png --insidecolor=00000000 --ringcolor=ffffffff --line-uses-inside --keyhlcolor=d23c3dff --bshlcolor=d23c3dff --separatorcolor=00000000 --insidevercolor=0c58d3ff --insidewrongcolor=d23c3dff --ringvercolor=ffffffff --ringwrongcolor=ffffffff --indpos="x+86:y+700" --radius=15 --veriftext="" --wrongtext=""


