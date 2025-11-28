#!/bin/bash

echo "Installing Oh My Posh"
curl -s https://ohmyposh.dev/install.sh | bash -s -- -t /home/difi/.cache/oh-my-posh
chown -R difi:difi .cache/oh-my-posh/
echo ""

echo "Installing Nerd fonts"
cd /home/difi
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/Hack.zip
sudo mkdir /usr/local/share/fonts/Hack
sudo unzip Hack.zip -d /usr/local/share/fonts/Hack/
sudo apt install fontconfig
sudo fc-cache -fv
sudo rm -rf /home/difi/Hack.zip
echo ""

echo "Finished"
echo "Add this line to .baschrc to change prompt"
echo "export PATH=\$PATH:/home/difi/.local/bin"
echo "eval \"\$(oh-my-posh init bash --config https://raw.githubusercontent.com/dingsoyr/oh-my-posh/main/sture.omp.json)\""
