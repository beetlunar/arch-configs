#!/bin/bash

set -e

WAYBAR_DIR="$HOME/.config/waybar"
# Get the absolute path of the directory where the script is located to create robust symlinks
SOURCE_DIR="$(cd "$(dirname "$0")" && pwd)"
CONFIG_FILE="hypr-config/config.jsonc"
STYLE_FILE="hypr-config/style.css"

mkdir -p "$WAYBAR_DIR"

# Create symbolic links. The -f flag forces overwriting of existing files/links.
ln -sf "$SOURCE_DIR/$CONFIG_FILE" "$WAYBAR_DIR/"
ln -sf "$SOURCE_DIR/$STYLE_FILE" "$WAYBAR_DIR/"

