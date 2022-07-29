#!/bin/sh

[ -f ~/.xprofile ] && . ~/.xprofile

xrdb -merge ~/.Xresources  

# Keyboard settings
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

dwmblocks &

setxkbmap -option "caps:swapescape"

exec dwm
