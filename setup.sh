#!/bin/bash

# Official apps to install
official_apps=(
    "git"
    "stow"
    "feh"
    "vim"
    "base-devel"
    "firefox"
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

