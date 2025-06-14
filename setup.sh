#!/bin/bash

echo "🔄 Restoring dotfiles and settings..."

# Shell and git
cp ./bashrc ~/.bashrc
cp ./zshrc ~/.zshrc
cp ./gitconfig ~/.gitconfig

# Kitty and Neovim
cp -r ./kitty ~/.config/
cp -r ./nvim ~/.config/

# VS Code
mkdir -p ~/.config/Code/User
cp ./vscode-settings.json ~/.config/Code/User/settings.json

# GNOME
echo "🧠 Importing GNOME settings..."
dconf load / < dconf-settings.ini

echo "✅ Setup complete. Please restart your session for all settings to take effect."
