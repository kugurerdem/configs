#!/bin/sh

[ -f ~/.xprofile ] && . ~/.xprofile

xrdb -merge ~/.Xresources  

# Keyboard settings
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

dwmblocks &

setxkbmap -option "caps:swapescape"
setxkbmap -model pc104 -layout us,tr -option grp:win_space_toggle

exec dwm
