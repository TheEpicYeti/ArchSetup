#!/bin/bash
pacman -Syu
pacman -S linux-lts linux-lts-headers nvidia nvidia-utils nvidia-settings xorg xorg-server xorg-xinit lib32-mesa lib32-vulkan-radeon vulkan-icd-loader lib32-vulkan-icd-loader vulkan-radeon packagekit-qt5 qt5-base qt5-svg qt5-declarative qt5-quickcontrols meson systemd dbus chromium krita libreoffice-fresh discord steam lutris obs-studio wine sddm plasma-desktop plasma-wayland-session plasma-nm ark sddm-kcm discover konsole dolphin kwalletmanager kvantum-qt5 neofetch zsh powerdevil tlp tlp-rdw --noconfirm
# SUBLIME
cd ~
curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf
pacman -Syu
pacman -S sublime-text
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
# INSTALL YAY
cd ~
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
# INSTALL SPOTIFY
curl -sS https://download.spotify.com/debian/pubkey.gpg | gpg --import -
cd ~
git clone https://aur.archlinux.org/spotify.git
cd spotify
makepkg -si
# INSTALL SLACK
cd ~
git clone https://aur.archlinux.org/slack-desktop.git
cd slack-desktop
makepkg -si
# INSTALL OCS-URL
cd ~
git clone https://aur.archlinux.org/ocs-url.git
cd ocs-url
makepkg -si
# INSTALL DROPBOX
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
cd ~
git clone https://aur.archlinux.org/dropbox.git
cd dropbox
makepkg -si
# INSTALL TIMESHIFT
cd ~
git clone https://aur.archlinux.org/timeshift.git
cd timeshift
makepkg -si
# INSTALL FIRMWARE 1
cd ~
git clone https://aur.archlinux.org/wd719x-firmware.git
cd wd719x-firmware
makepkg -si
# INSTALL FIRMWARE 2
cd ~
git clone https://aur.archlinux.org/aic94xx-firmware.git
cd aic94xx-firmware
makepkg -si
# INSTALL PARU
cd ~
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
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