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

# Update system
echo "working updates..."
sudo pacman -Syu --noconfirm

# Install official packages
echo "working packages..."
sudo pacman -S --noconfirm "${arch_apps[@]}"

# Make folders
echo "making home folders..."
mkdir ~/bld
mkdir ~/prj
mkdir ~/tmp
mkdir ~/med
mkdir ~/doc

echo "done"

