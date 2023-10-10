ZSHRC_PATH="zsh/.zshrc"
IDEAVIMRC_PATH=".ideavimrc"
GITCONFIG_PATH=".gitconfig"


# Setup symbolic links
ln -s $(pwd)/$ZSHRC_PATH ~/
ln -s $(pwd)/$IDEAVIMRC_PATH ~/.ideavimrc
ln -s $(pwd)/$GITCONFIG_PATH ~/.gitconfig

source ~/.zshrc

if ! command -v brew &> /dev/null; then
    echo "Brew is not installed. Please install it first."
    exit 1
fi

xargs brew install < ./brew-packages.txt

echo "DOT_FILES initialized"

source ./brew_setup.sh
