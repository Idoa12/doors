#!/bin/bash

DOOR_DIR="$HOME/.doors"

if [[ ! -d "$DOOR_DIR" ]]; then
  echo "Door directory not found. Please reinstall or run install.sh"
  exit 1
fi

if [[ "$1" == "--list" ]]; then
  echo "Available Doors:"
  ls "$DOOR_DIR" | sed 's/\.txt$//'  # remove .txt from names
  exit 0
fi

RANDOM_DOOR=$(ls "$DOOR_DIR" | shuf -n 1)
cat "$DOOR_DIR/$RANDOM_DOOR"
