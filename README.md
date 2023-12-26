This repository consists my personal configuration files for my arch linux
setups. Here, I share some of the notes to myself which might be helpfull
during the installation process.

# Packages to Install With Pacman and AUR

The list of dependencies that might be helpfull to install during the
configuration process are available at [DEPENDENCIES](DEPENDENCIES.md)

Do not forget to reboot after installing the dependencies mentioned above.

# Programs to Install Manually

Other programs that I often use like ``dwm``, ``dvtm``, ``yay``, ``dwmblocks``
can be installed manually through cloning their git repositories and following
their installation manuals.

## fzf

To utilize the fzf terminal's auto completion and keybindings features, you
need to build it yourself instead of downloading it through pacman or aur.

## DVTM

Mouse wheels does not work properly in default DVTM but a person @ccrusius seem
to have patched this issue in this
[PR](https://github.com/martanne/dvtm/pull/104). I have included the patch in
.config/sources/dvtm folder, all you need to this is to apply this patch after
cloning the official dvtm repository.

## Brightness

Don't forget to run the command `chmod +s /usr/bin/light` after installing
`light`, this will give sudo privalges to `light`

Also do not forget to add yourself in the `video` user group.

## Sound (External Microphone)

External microphones were not recognized on my Lenovo S145-API computer. To fix
this, I have openned the file (create if not exists) in
``/etc/modprobe.d/alsa-base.conf`` and put ``options snd-hda-intel
model=headset-mic,dell-headset-multi`` inside. This will fix the unrecognized
external microphone issue.

