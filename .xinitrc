#!/bin/sh

[ -f ~/.xprofile ] && . ~/.xprofile

xrdb -merge ~/.Xresources  

dwmblocks &

# Keyboard settings
# setxkbmap -option "caps:swapescape"
# setxkbmap -model pc104 -layout us,tr -option grp:win_space_toggle

[ -f ~/.Xmodmap ] && xmodmap ~/.Xmodmap

exec dwm
