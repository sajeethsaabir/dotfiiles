#!/bin/bash

# Ensure script is run with sudo
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root. Use sudo." 
   exit 1
fi

# Update package list and system
echo "Updating system packages..."
pacman -Syy --confirm \
pacman -Syu --noconfirm

# Install core development and desktop packages
echo "Installing packages..."
pacman -S --noconfirm \
    base-devel	\
    xorg-xinit \
    xorg-server \
    git \
    vim \
    neovim \
    i3-wm \
    i3status \
    i3lock \
    alacritty \
    firefox \
    xorg \
    dmenu \
    ttf-dejavu \
    nitrogen \
    lxappearance \
    kitty \
    rofi \
    breeze-gtk \
    breeze-icons \
    pavucontrol

# Create a message for the user
echo "
Installation complete!

Recommended next steps:
1. Configure i3 in ~/.config/i3/config
2. Set up your user account
3. Configure display manager or startx
4. Customize alacritty in ~/.config/alacritty/alacritty.yml
"
