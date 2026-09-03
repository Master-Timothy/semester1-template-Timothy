#!/usr/bin/env bash
set -e

echo "Installing Clojure CLI tools..."
curl -L -O https://github.com/clojure/brew-install/releases/latest/download/linux-install.sh
chmod +x linux-install.sh
sudo ./linux-install.sh
rm linux-install.sh

echo "Installing Leiningen (optional, some students may prefer it to the Clojure CLI)..."
mkdir -p ~/bin
curl -o ~/bin/lein https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
chmod +x ~/bin/lein
echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc

echo "Upgrading pip..."
pip install --upgrade pip

echo "Verifying installs..."
clojure -e "(println \"Clojure CLI OK\")" || echo "WARNING: Clojure CLI check failed"
python3 --version

echo "Setup complete!"
