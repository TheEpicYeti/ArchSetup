#!/bin/bash
# SPOTIFY
cd ~
git clone https://aur.archlinux.org/spotify.git
cd spotify
makepkg -si --noconfirm
# SLACK
cd ~
https://aur.archlinux.org/slack-desktop.git
cd slack-desktop
makepkg -si --noconfirm
# OCS-URL
cd ~
https://aur.archlinux.org/ocs-url.git
cd ocs-url
makepkg -si --noconfirm
# DROPBOX
cd ~
https://aur.archlinux.org/dropbox.git
cd dropbox
makepkg -si --noconfirm
# TIMESHIFT
cd ~
https://aur.archlinux.org/timeshift.git
cd timeshift
makepkg -si --noconfirm
# FIRMWARE 1
cd ~
https://aur.archlinux.org/wd719x-firmware.git
cd wd719x-firmware
makepkg -si --noconfirm
#FIRMWARE 2
cd ~
https://aur.archlinux.org/aic94xx-firmware.git
cd aic94xx-firmware
makepkg -si --noconfirm
cd ~
