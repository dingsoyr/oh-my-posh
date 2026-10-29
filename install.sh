#!/bin/bash
set -euo pipefail

INSTALL_DIR="$HOME/.local/bin"
CONFIG_URL="https://raw.githubusercontent.com/dingsoyr/oh-my-posh/main/sture.omp.json"

echo "Installing dependencies"
sudo apt-get update
sudo apt-get install -y curl unzip fontconfig
echo ""

echo "Installing Oh My Posh"
mkdir -p "$INSTALL_DIR"
curl -s https://ohmyposh.dev/install.sh | bash -s -- -d "$INSTALL_DIR"
echo ""

echo "Installing Hack Nerd Font"
"$INSTALL_DIR/oh-my-posh" font install hack
echo ""

echo "Configuring ~/.bashrc"
BASHRC="$HOME/.bashrc"
touch "$BASHRC"
if grep -q "oh-my-posh init bash" "$BASHRC"; then
    echo "Oh My Posh is already configured in $BASHRC, skipping"
else
    cat >> "$BASHRC" <<EOF

# Oh My Posh
export PATH=\$PATH:$INSTALL_DIR
eval "\$(oh-my-posh init bash --config $CONFIG_URL)"
EOF
    echo "Added Oh My Posh to $BASHRC"
fi
echo ""

echo "Finished"
echo "Restart your terminal or run 'source ~/.bashrc' to load the new prompt"
