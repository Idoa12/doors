#!/bin/bash

echo "Installing Mysterious Door Viewer..."

# Copy doors to hidden location
mkdir -p "$HOME/.doors"
cp .doors/*.png "$HOME/.doors"

# Make the command available globally
chmod +x showdoor.sh
sudo ln -sf "$PWD/showdoor.sh" /usr/local/bin/showdoor

echo "Done! Try it with: showdoor or showdoor --list"
