wget -qO- https://raw.githubusercontent.com/PapirusDevelopmentTeam/materia-kde/master/install.sh | sh --noconfirm
wget -qO- https://git.io/papirus-icon-theme-install | DESTDIR="$HOME/.local/share/icons" sh --noconfirm

git clone https://github.com/FeralInteractive/gamemode.git
cd gamemode
git checkout 1.5.1
./bootstrap.sh
cd

curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg --noconfirm
echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf --noconfirm
sudo pacman -Syu sublime-text --noconfirm