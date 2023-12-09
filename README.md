![Mah bootifoo terminal](resources/banner.png)

| Module     | Description                                    |
|------------|------------------------------------------------|
| Neovim     | Text editor                                    |
| ZSH        | zsh shell configs                              |
| Fish       | Shell configs                                  |
| .ideavimrc | VIM configuration file for IntelliJ VIM plugin |

## Setup
- Add git credentials in ssh

## Windows
- Install WSL
- Install ZSH

## Commands dump
```
# Set zsh as default shell
chsh -s $(which zsh)

# Installing
brew bundle --file=~/dot_files/brew/Brewfile

# Exporting brew packages
brew bundle dump
```

## Prerequisites
- Brew
- Nerd-font 
  - For displaying oh-my-posh
  - I'm currently using Jetbrains Mono


## Resources
- https://github.com/rockerBOO/awesome-neovim
- chris@machine Neovim series
- Smart friends (https://github.com/evantancy)
- https://learn.microsoft.com/en-us/windows-server/administration/openssh/openssh_server_configuration

```
New-Item -Path ~\dot_files -ItemType SymbolicLink -Value .\dot_files\
```
