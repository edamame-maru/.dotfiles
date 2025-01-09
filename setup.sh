#!/bin/bash

# Official apps to install
official_apps=(
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
)

# Update system
echo "running pacman -Syu..."
sudo pacman -Syu --noconfirm

# Install official packages
echo "working..."
sudo pacman -S --noconfirm "${official_apps[@]}"

# Make folders
echo "making home folders..."
mkdir ~/bld
mkdir ~/prj
mkdir ~/tmp
mkdir ~/med
mkdir ~/doc

echo "done"

