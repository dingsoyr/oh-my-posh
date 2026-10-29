# Documentation
Have a look at https://ohmyposh.dev/docs/installation/linux

# Automatic installation
```
curl -s https://raw.githubusercontent.com/dingsoyr/oh-my-posh/main/install.sh | bash -s
```
The script adds Oh My Posh to `~/.bashrc` if it is not already there.
# Manual installation
## Install dependencies
```
sudo apt-get update
sudo apt-get install -y curl unzip fontconfig
```
## Install Oh My Posh
```
mkdir -p ~/.local/bin
curl -s https://ohmyposh.dev/install.sh | bash -s -- -d ~/.local/bin
```
## Install Hack Nerd Font
```
~/.local/bin/oh-my-posh font install hack
```
Remember to select the font in your terminal.

# Add to prompt by adding to .bashrc
```
export PATH=$PATH:$HOME/.local/bin
eval "$(oh-my-posh init bash --config https://raw.githubusercontent.com/dingsoyr/oh-my-posh/main/sture.omp.json)"
```
