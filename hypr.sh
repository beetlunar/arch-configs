#!/bin/bash

SOURCE_FILES=(
    "hypr-config/hyprland.conf"
    "hypr-config/hyprsunset.conf"
    "hypr-config/hypridle.conf"
    "hypr-config/hyprlock.conf"
    "hypr-config/hyprpaper.conf"
)
DEST_DIR="$HOME/.config/hypr"

set -e

if [ ! -d "$DEST_DIR" ]; then
    mkdir -p "$DEST_DIR"
fi

for conf_file in "${SOURCE_FILES[@]}"; do
    DEST_FILE="$DEST_DIR/$conf_file"

    if [ ! -f "$conf_file" ]; then
        continue
    fi
    
    if [ -f "$DEST_FILE" ]; then
        BACKUP_FILE="${DEST_FILE}.backup_$(date +%Y%m%d_%H%M%S)"
        mv "$DEST_FILE" "$BACKUP_FILE"
    fi

    cp "$conf_file" "$DEST_FILE"
done
