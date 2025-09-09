#!/bin/bash
sudo pacman -S zsh nvim flatpak ghostty wl-clipboard zsh-syntax-highligting
flatpak install flathub app.zen_browser.zen
git clone https://github.com/beetlunar/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
