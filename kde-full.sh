#!/bin/bash
# SUBLIME
cd ~
curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf
sudo pacman -Syy
sudo pacman -S sublime-text --noconfirm
#IMPORT SPOTIFY & DROPBOX KEYS
cd ~ curl -sS https://download.spotify.com/debian/pubkey.gpg | gpg --import -
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
# INSTALL PARU
cd ~
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
wait
# INSTALL YAY
paru yay
# INSTALL SPOTIFY
paru spotify
# INSTALL SLACK
paru slack-desktop
# INSTALL OCS-URL
paru ocs-url
# INSTALL DROPBOX
paru dropbox
# INSTALL TIMESHIFT
paru timeshift
# INSTALL FIRMWARE 1
paru wd719x-firmware
# INSTALL FIRMWARE 2
paru aic94xx-firmware
# INSTALL MONCHROME THEME
cd ~
git clone https://gitlab.com/pwyde/monochrome-kde
cd monochrome-kde
./install.sh --install
# INSTALL ICON THEME
wget -qO- https://git.io/papirus-icon-theme-install | DESTDIR="$HOME/.local/share/icons" sh
wget -qO- https://git.io/papirus-folders-install | sh
papirus-folders -C violet --theme Papirus-Dark
# ZSH + PLUGINS
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# CUSTOM PROTON
cd ~
wget https://raw.githubusercontent.com/Termuellinator/ProtonUpdater/master/cproton.sh
sudo chmod +x cproton.sh
./cproton.sh
# FERAL GAMEMODE
cd ~
git clone https://github.com/FeralInteractive/gamemode.git
cd gamemode
./bootstrap.sh