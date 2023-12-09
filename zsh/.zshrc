current_kernel=$(uname)
kernel_version=$(uname -r)

# Windows WSL
if [[ $kernel_version == *WSL* && $current_kernel == "Linux" ]]; then
    source ~/dot_files/zsh/zsh_paths_wsl
# Mac
elif [[ "$current_kernel" == "Darwin" ]]; then
    source ~/dot_files/zsh/zsh_paths_mac
fi

source ~/dot_files/brew/setup
source ~/dot_files/zsh/zsh_aliases

# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
#plug "zap-zsh/supercharge"
#plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"
plug "zap-zsh/vim"

# Load and initialise completion system
autoload -Uz compinit
compinit


