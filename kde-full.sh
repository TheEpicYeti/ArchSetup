#!/bin/bash
# SUBLIME
cd ~
curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
wait $!
echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf
wait $!
pacman -Syy
wait $!
pacman -S sublime-text --noconfirm
wait $!
# INSTALL YAY
cd ~
git clone https://aur.archlinux.org/yay.git
wait $!
cd yay
makepkg -si
wait $!
# INSTALL SPOTIFY
curl -sS https://download.spotify.com/debian/pubkey.gpg | gpg --import -
cd ~
git clone https://aur.archlinux.org/spotify.git
wait $!
cd spotify
makepkg -si
wait $!
# INSTALL SLACK
cd ~
git clone https://aur.archlinux.org/slack-desktop.git
wait $!
cd slack-desktop
makepkg -si
wait $!
# INSTALL OCS-URL
cd ~
git clone https://aur.archlinux.org/ocs-url.git
wait $!
cd ocs-url
makepkg -si
# INSTALL DROPBOX
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
wait $!
cd ~
git clone https://aur.archlinux.org/dropbox.git
wait $!
cd dropbox
makepkg -si
wait $!
# INSTALL TIMESHIFT
cd ~
git clone https://aur.archlinux.org/timeshift.git
wait $!
cd timeshift
makepkg -si
wait $!
# INSTALL FIRMWARE 1
cd ~
git clone https://aur.archlinux.org/wd719x-firmware.git
wait $!
cd wd719x-firmware
makepkg -si
wait $!
# INSTALL FIRMWARE 2
cd ~
git clone https://aur.archlinux.org/aic94xx-firmware.git
wait $!
cd aic94xx-firmware
makepkg -si
wait $!
# INSTALL PARU
cd ~
git clone https://aur.archlinux.org/paru.git
wait $!
cd paru
makepkg -si
wait $!
# INSTALL MONCHROME THEME
cd ~
git clone https://gitlab.com/pwyde/monochrome-kde
wait $!
cd monochrome-kde
./install.sh --install
wait $!
# INSTALL ICON THEME
wget -qO- https://git.io/papirus-icon-theme-install | DESTDIR="$HOME/.local/share/icons" sh
wait $!
wget -qO- https://git.io/papirus-folders-install | sh
wait $!
papirus-folders -C violet --theme Papirus-Dark
# ZSH + PLUGINS
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
wait $!
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
wait $!
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
wait $!
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
wait $!
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
wait $!
# CUSTOM PROTON
cd ~
wget https://raw.githubusercontent.com/Termuellinator/ProtonUpdater/master/cproton.sh
wait $!
sudo chmod +x cproton.sh
wait $!
./cproton.sh
wait $!
# FERAL GAMEMODE
cd ~
git clone https://github.com/FeralInteractive/gamemode.git
wait $!
cd gamemode
wait $!
./bootstrap.sh
wait $!