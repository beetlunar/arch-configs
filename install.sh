#!/bin/bash
sudo pacman -S --needed --noconfirm zsh nvim flatpak ghostty wl-clipboard zsh-syntax-highlighting go wofi hyprland github-cli waybar hyprpaper
flatpak install flathub app.zen_browser.zen
git clone https://github.com/beetlunar/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo pacman -S --needed --noconfirm hyprlock hyprpicker hyprsunset xdg-desktop-portal-hyprland hyprpolkitagent qt6-wayland qt5-wayland hypridle
