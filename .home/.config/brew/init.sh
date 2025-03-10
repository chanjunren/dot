#!/usr/bin/env zsh

# NVM Configuration
NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/powerlevel10k_rainbow.omp.json)"
eval "$(oh-my-posh init zsh --config ${XDG_CONFIG_HOME}/brew/posh_themes/rose-pine.omp.json)"
# eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/gruvbox.omp.json)"
# eval "$(oh-my-posh init zsh --config $XDG_CONFIG_HOME/brew/github_dark_tritanopia.omp.json)"
# eval "$(oh-my-posh init zsh --config $XDG_CONFIG_HOME/brew/custom1.omp.json)"
# eval "$(oh-my-posh init zsh --config $XDG_CONFIG_HOME/brew/gruvbox-material.omp.json)"
