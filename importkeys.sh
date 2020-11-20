#!/bin/bash
cd ~ 
curl -sS https://download.spotify.com/debian/pubkey.gpg | gpg --import -
cd ~ 
wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
