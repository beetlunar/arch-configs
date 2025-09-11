#!/bin/bash

SOURCE_CONF="hyprland.conf"
DEST_DIR="$HOME/.config/hypr"
DEST_FILE="$DEST_DIR/$SOURCE_CONF"

set -e

if [ ! -f "$SOURCE_CONF" ]; then
    exit 1
fi

if [ ! -d "$DEST_DIR" ]; then
    mkdir -p "$DEST_DIR"
fi

if [ -f "$DEST_FILE" ]; then
    BACKUP_FILE="${DEST_FILE}.backup_$(date +%Y%m%d_%H%M%S)"
    mv "$DEST_FILE" "$BACKUP_FILE"
fi

cp "$SOURCE_CONF" "$DEST_FILE"
