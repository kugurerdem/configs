This repository consists my personal configuration files for my arch linux
setups. Here, I share some of the notes to myself which might be helpfull
during the installation process.

# Packages to install

Here are the list of dependencies that might be helpfull to install during the
configuration process:

```
scrot
acpid
pamixer
xclip
xorg-xbacklight
light
xdotool
pipewire
pipewire-pulse
pipewire-media-session
pipewire-alsa
pipewire-jack
pavucontrol
gtk2
gtk3
pinentry
python3
```

If you put the dependencies above in a file `dependencies.txt`, you can then
run:

```
cat dependencies.txt | xargs sudo pacman -S
```

# Reminders to myself

Do not forget to reboot after installing the dependencies mentioned above.

## Brightness

Don't forget to run the command `chmod +s /usr/bin/light` after installing
`light`, this will give sudo privalges to `light`

Also do not forget to add yourself in the `video` user group.

