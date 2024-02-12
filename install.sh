#!/bin/bash

if [ "$(whoami)" != "root" ] ; then echo "Please run as root!"; exit; fi

echo "Installing Oh My Posh"
curl -s https://ohmyposh.dev/install.sh | bash -s -- -t /home/difi/.cache/oh-my-posh
chown -R difi:difi .cache/oh-my-posh/
echo ""

echo "Installing Nerd fonts"
cd /home/difi
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Hack.zip
mkdir /usr/local/share/fonts/Hack
unzip Hack.zip -d /usr/local/share/fonts/Hack/
apt install fontconfig
fc-cache -fv
rm -rf /home/difi/Hack.zip
echo ""

echo "Finished"
echo "Add this line to .baschrc to change prompt"
echo "eval \"\$(oh-my-posh init bash --config https://raw.githubusercontent.com/dingsoyr/oh-my-posh/main/sture.omp.json)\""
