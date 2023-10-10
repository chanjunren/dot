#!/usr/bin/env zsh
ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519_github -C "chanjunren@gmail.com"
ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519_gitlab -C "junren.chan@okg.com"

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519_github
ssh-add ~/.ssh/id_ed25519_gitlab

# Copy to paste and add to the relevant account
# pbcopy < ~/.ssh/id_ed25519_github.pub
# pbcopy < ~/.ssh/id_ed25519_gitlab.pub
