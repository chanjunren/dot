![02112024](assets/new_banner.png)
![18122023](assets/banner.png)

## 🌳 Prerequisites

- [brew](https://brew.sh/)
- [zap](https://github.com/zap-zsh/zap) **remember to run installation with `-k`**
- [wezterm](https://wezfurlong.org/wezterm/)
- [tpm](https://wezfurlong.org/wezterm/)

## 🐭 Commands dump

### 🍎 Mac

```bash
# Set zsh as default shell
chsh -s $(which zsh)

# Installing
brew bundle --file=~/.nexus/dot/.home/.config/brew/Brewfile

# Exporting brew packages
brew bundle dump

# Removing incorrectly generated symlinks 😰
find ~ -maxdepth 1 -lname 'dot_files/*' -exec echo rm {} \;
find ~ -maxdepth 1 -lname 'dot_files/*' -exec rm {} \;

stow .config -t ~/.config
stow .home -t ~
```

### 🪟 Windows

```powershell
# Path - where the symbolic link will be
# Value - Source file
New-Item -Path AppData\Roaming\Code\User\settings.json -Value .\dot\.home\.config\vscode\settings.json -ItemType SymbolicLink
New-Item -Path .glzr -Value .\dot\.home\.config\.glzr -ItemType SymbolicLink
New-Item -Path .wezterm.lua -Value .\dot\.home\.config\wezterm\wezterm.lua -ItemType SymbolicLink
```

## 🛣️ Paths

| Path   | Description                 |
| ------ | --------------------------- |
| VSCode | `AppData\Roaming\Code\User` |

## Fonts

- [geist mono](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/GeistMono.zip)
- [jetbrains mono](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/JetBrainsMono.zip)
- [geist](https://fonts.google.com/specimen/Geist)
- [spectral](https://fonts.google.com/specimen/Spectral)

## 🐶 Resources

- https://wiki.archlinux.org/title/XDG_Base_Directory
- https://github.com/rockerBOO/awesome-neovim
- chris@machine Neovim series
- https://learn.microsoft.com/en-us/windows-server/administration/openssh/openssh_server_configuration
