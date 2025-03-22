#!/bin/bash

DOOR_DIR="$HOME/.doors"
HEADER_LINES=8  # Adjust depending on the header font size

if [[ ! -d "$DOOR_DIR" ]]; then
  echo "Door directory not found at $DOOR_DIR"
  exit 1
fi

# Show list of doors
if [[ "$1" == "--list" ]]; then
  echo "Available Doors:"
  find "$DOOR_DIR" -type f -name "*.png" | sed 's|.*/||' | sed 's/\.png$//'
  exit 0
fi

# Terminal dimensions
TERM_WIDTH=$(tput cols)
TERM_HEIGHT=$(tput lines)
AVAILABLE_HEIGHT=$((TERM_HEIGHT - HEADER_LINES))

# Pick random PNG
RANDOM_DOOR=$(find "$DOOR_DIR" -type f -name "*.png" | shuf -n 1)

# Show image scaled to fit below the banner
jp2a --colors --color-depth=24 --height=$AVAILABLE_HEIGHT "$RANDOM_DOOR"

