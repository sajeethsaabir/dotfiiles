#!/bin/bash

# Ensure script is run with sudo
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root. Use sudo." 
   exit 1
fi

# Update package list and system
echo "Updating system packages..."
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
    breeze-icons


# Additional recommended packages for a complete setup
# pacman -S --noconfirm \
#    base-devel \
#    network-manager \
#    pulseaudio \
#    pavucontrol

# Configure i3 for new users
echo "Setting up i3 configuration..."
mkdir -p /etc/skel/.config/i3
cp /usr/share/doc/i3/config /etc/skel/.config/i3/config

# Create a message for the user
echo "
Installation complete!

Recommended next steps:
1. Configure i3 in ~/.config/i3/config
2. Set up your user account
3. Configure display manager or startx
4. Customize alacritty in ~/.config/alacritty/alacritty.yml
"
