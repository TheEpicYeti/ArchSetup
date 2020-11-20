#!/bin/bash
# MONCHROME THEME
cd ~
git clone https://gitlab.com/pwyde/monochrome-kde
cd monochrome-kde
./install.sh --install
# ICON THEME
wget -qO- https://git.io/papirus-icon-theme-install | DESTDIR="$HOME/.local/share/icons" sh
wget -qO- https://git.io/papirus-folders-install | sh
papirus-folders -C violet --theme Papirus-Dark
