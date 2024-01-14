#!/bin/sh

/usr/bin/pipewire &
/usr/bin/pipewire-pulse &
/usr/bin/pipewire-media-session &

[ -f ~/.xprofile ] && . ~/.xprofile

xrdb -merge ~/.Xresources

dwmblocks &
dunst &
picom &
wallpaper-manager &

# Keyboard settings
setxkbmap -option "caps:swapescape"
setxkbmap -model pc104 -layout tr -variant alt

exec dwm
