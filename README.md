This repository consists my personal configuration files for my arch linux
setups. Here, I share some of the notes to myself which might be helpfull
during the installation process.

# How to Setup

``git init`` on your home directory

``git remote add origin git@github.com:kugurerdem/dotfiles.git``

``git pull --recurse-submodules``

# Packages to Install With Pacman and AUR

The list of dependencies that might be helpfull to install during the
configuration process are available at [DEPENDENCIES](DEPENDENCIES.md)

Do not forget to reboot after installing the dependencies mentioned above.

# Programs to Install Manually

Other source code for the programs that I often use can be found under
``.gitsources`` folder.

# Additional Notes

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

