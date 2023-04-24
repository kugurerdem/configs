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
bluez
bluez-utils
pavucontrol
gtk2
gtk3
pinentry
python3
ueberzug
ranger
unzip
dunst
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

## DVTM

Mouse wheels does not work properly in default DVTM but a person @ccrusius seem
to have patched this issue in this
[PR](https://github.com/martanne/dvtm/pull/104). I have included the patch in
.config/sources/dvtm folder, all you need to this is to apply this patch after
cloning the official dvtm repository.

## Sound (External Microphone)

External microphones were not recognized on my Lenovo S145-API computer. To fix
this, I have openned the file (create if not exists) in
``/etc/modprobe.d/alsa-base.conf`` and put ``options snd-hda-intel
model=headset-mic,dell-headset-multi`` inside. This will fix the unrecognized
external microphone issue.
