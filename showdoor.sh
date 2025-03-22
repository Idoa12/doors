#!/bin/bash

DOOR_DIR="$HOME/.doors"

if [[ ! -d "$DOOR_DIR" ]]; then
  echo "Door directory not found at $DOOR_DIR"
  exit 1
fi

# Show list of available doors
if [[ "$1" == "--list" ]]; then
  echo "Available Doors:"
  find "$DOOR_DIR" -type f -name "*.png" | sed 's|.*/||' | sed 's/\.png$//'
  exit 0
fi

# Pick a random PNG
RANDOM_DOOR=$(find "$DOOR_DIR" -type f -name "*.png" | shuf -n 1)

# Render it in terminal
jp2a --colors --color-depth=24 --term-fit "$RANDOM_DOOR"
