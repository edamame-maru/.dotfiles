#!/bin/bash
# stow-all.sh
for dir in */; do
  stow "${dir%/}"
done

