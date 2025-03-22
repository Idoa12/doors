#!/bin/bash

echo "Installing showdoor..."

# Create hidden doors directory
mkdir -p "$HOME/.doors"

# Copy all PNGs into ~/.doors
cp .doors/*.png "$HOME/.doors/"

# Copy and install the script
cp showdoor.sh /usr/local/bin/showdoor
chmod +x /usr/local/bin/showdoor

echo "Installation complete. You can now run 'showdoor'."

