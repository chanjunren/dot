export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/share"

export XDG_DESKTOP_DIR="$HOME/Desktop"
export XDG_DOWNLOAD_DIR="$HOME/Downloads"
export XDG_TEMPLATES_DIR="$HOME/Templates"
export XDG_PUBLICSHARE_DIR="$HOME/Public"
export XDG_DOCUMENTS_DIR="$HOME/Documents"
export XDG_MUSIC_DIR="$HOME/Music"
export XDG_PICTURES_DIR="$HOME/Pictures"
export XDG_VIDEOS_DIR="$HOME/Videos"

export DOT_FILES="$HOME/dot_files"

export LESSHISTFILE=-


current_kernel=$(uname)
kernel_version=$(uname -r)

# Windows WSL
if [[ $kernel_version == *WSL* && $current_kernel == "Linux" ]]; then
    source ~/dot_files/zsh/zsh_paths_wsl
# Mac
elif [[ "$current_kernel" == "Darwin" ]]; then
    source ~/dot_files/zsh/zsh_paths_mac
fi

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

source ~/dot_files/brew/setup
source ~/dot_files/zsh/zsh_aliases

