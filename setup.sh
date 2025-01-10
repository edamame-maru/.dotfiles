#!/bin/bash

arch_apps=(
    "git"
    "stow"
    "feh"
    "vim"
    "zathura"
    "zathura-pdf-poppler"
    "base-devel"
    "alacritty"
    "less"
    "firefox"
    "noto-fonts-cjk"
    "ttf-fira-code"
    "brightnessctl"
    "pavucontrol"
    "wireguard-tools"
    "openresolv"
)

debian_apps=(
    "git"
    "stow"
    "feh"
    "vim"
    "zathura"
    "build-essential"
    "alacritty"
    "less"
    "firefox"
    "fonts-noto-cjk"
    "fonts-firacode"
    "brightnessctl"
    "pavucontrol"
    "wireguard"
    "openresolv"
)

# Update system
echo "working updates..."
sudo pacman -Syu --noconfirm
sudo apt update && sudo apt upgrade -y

# Install official packages
echo "working packages..."
sudo pacman -S --noconfirm "${arch_apps[@]}"
sudo apt install -y "${debian_apps[@]}"

# Make folders
echo "making home folders..."
mkdir ~/bld
mkdir ~/prj
mkdir ~/tmp
mkdir ~/med
mkdir ~/doc

echo "done"

