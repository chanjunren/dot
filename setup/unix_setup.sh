#!/usr/bin/env zsh

# Meant for setting up all the relevant dot files for a new machine (WSL / Mac / Linux)

# Symbolic links
ln -s $(pwd)/zsh/.zshrc ~/$HOME/.config
ln -s $(pwd)/ideavim/.ideavimrc ~/.ideavimrc
ln -s $(pwd)/git/.gitconfig ~/.gitconfig
ln -s $(pwd)/lazy_nvim ~/.config/nvim

source ~/.zshrc

if ! command -v brew &> /dev/null; then
    echo "Brew is not installed. Please install it first."
    exit 1
fi

xargs brew install < ./brew-packages.txt

echo "DOT_FILES initialized"

source ./brew_setup.sh
