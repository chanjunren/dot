#!/usr/bin/env zsh

# TODO: Make this script idempotent
# Meant for setting up all the relevant dot files for a new machine (WSL / Mac / Linux)
DOT_FILES_HOME=~/dot_files

# Symbolic links
ln -s ${DOT_FILES_HOME}/zsh/.zshrc $HOME
ln -s ${DOT_FILES_HOME}/ideavim/.ideavimrc ~/.ideavimrc
ln -s ${DOT_FILES_HOME}/git/.gitconfig ~/.gitconfig
ln -s ${DOT_FILES_HOME}/lazy_nvim ~/.config/nvim


if ! command -v brew &> /dev/null; then
    echo "Brew is not installed. Please install it first."
    exit 1
fi

xargs brew install < ${DOT_FILES_HOME}/brew/brew-packages.txt

source ~/.zshrc

echo "DOT_FILES initialized"

source ${DOT_FILES_HOME}/brew/setup
