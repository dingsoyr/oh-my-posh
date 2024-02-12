# Documentation
Have a look at https://ohmyposh.dev/docs/installation/linux

# Automatic installation
```
sudo su
curl -s https://raw.githubusercontent.com/dingsoyr/oh-my-posh/main/install.sh | bash -s
chown -R difi:difi .cache/oh-my-posh/
```
# Manual installation
## Install
To install Oh My Posh and put themes in spesified directory:
```
sudo su
curl -s https://ohmyposh.dev/install.sh | bash -s -- -t /home/difi/.cache/oh-my-posh
chown -R difi:difi .cache/oh-my-posh/
```
## Add nerd-font hack:
```
sudo su
cd /home/difi
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Hack.zip
mkdir /usr/local/share/fonts/Hack
unzip Hack.zip -d /usr/local/share/fonts/Hack/
apt install fontconfig
fc-cache -fv
rm -rf /home/difi/Hack.zip
```

# Add to prompt by adding to .bashrc
```
eval "$(oh-my-posh init bash --config https://raw.githubusercontent.com/dingsoyr/oh-my-posh/main/sture.omp.json)"
```
