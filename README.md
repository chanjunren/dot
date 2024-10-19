![Mah bootifoo terminal](assets/banner.png)

## 🫎 Prerequisites
- `nerdfont` (currently using `UbuntuMono Nerd Font`)
- `brew`
- `zsh`
- `alacritty`
- `Tmux Plugin Manager` 

## 🐭 Commands dump
### Mac
```bash
# Set zsh as default shell
chsh -s $(which zsh)

# Installing
brew bundle --file=~/.nexus/dot/brew/Brewfile

# Exporting brew packages
brew bundle dump

# Removing incorrectly generated symlinks 😰
find ~ -maxdepth 1 -lname 'dot_files/*' -exec echo rm {} \;
find ~ -maxdepth 1 -lname 'dot_files/*' -exec rm {} \;
stow -D <dir_name>
```
### Windows (Powershell)
```powershell
# Path - where the symbolic link will be | Value - Source file
New-Item -Path .\.config\wezterm -ItemType SymbolicLink -Value .\dot_files\wezterm\.config\wezterm
```

## Paths
| Path   | Description                                               |
|--------|-----------------------------------------------------------|
| VSCode | `/C:/Users/cjr_1/AppData/Roaming/Code/User/settings.json` |

## 🐶 Resources
- https://wiki.archlinux.org/title/XDG_Base_Directory
- https://github.com/rockerBOO/awesome-neovim
- chris@machine Neovim series
- https://learn.microsoft.com/en-us/windows-server/administration/openssh/openssh_server_configuration
