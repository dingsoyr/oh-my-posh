# Documentation
Have a look at https://ohmyposh.dev/docs/installation/linux

# Install
To install Oh My Posh and put themes in spesified directory:
```
sudo su
curl -s https://ohmyposh.dev/install.sh | bash -s -- -t /home/difi/.cache/oh-my-posh
```
# Add nerd-font hack:
```
cd /home/difi
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Hack.zip
sudo mkdir /usr/local/share/fonts/Hack
sudo unzip Hack.zip -d /usr/local/share/fonts/Hack/
sudo apt install fontconfig
sudo fc-cache -fv
sudo rm -rf /home/difi/Hack.zip
```

# Add to prompt by adding to .bashrc
```
eval "$(oh-my-posh init bash --config https://raw.githubusercontent.com/dingsoyr/oh-my-posh/main/sture.omp.json)"
```
