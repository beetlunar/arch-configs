#!/bin/bash

# An array of the configuration files to be processed
SOURCE_FILES=(
    "hyprland.conf"
    "hyprsunset.conf"
    "hypridle.conf"
    "hyprlock.conf"
    "hyprpaper.conf"
)

# The destination directory for the configuration files
DEST_DIR="$HOME/.config/hypr"

# Exit immediately if a command exits with a non-zero status
set -e

# Create the destination directory if it doesn't exist
if [ ! -d "$DEST_DIR" ]; then
    echo "Creating directory: $DEST_DIR"
    mkdir -p "$DEST_DIR"
fi

# Loop through each file in the SOURCE_FILES array
for conf_file in "${SOURCE_FILES[@]}"; do
    DEST_FILE="$DEST_DIR/$conf_file"

    # Check if the source file exists in the current directory
    if [ ! -f "$conf_file" ]; then
        echo "⚠️ Warning: Source file '$conf_file' not found. Skipping."
        continue # Move to the next file in the loop
    fi
    
    echo "Processing '$conf_file'..."

    # If the destination file already exists, create a timestamped backup
    if [ -f "$DEST_FILE" ]; then
        BACKUP_FILE="${DEST_FILE}.backup_$(date +%Y%m%d_%H%M%S)"
        echo "  -> Backing up existing file to '$BACKUP_FILE'"
        mv "$DEST_FILE" "$BACKUP_FILE"
    fi

    # Copy the new configuration file to the destination
    echo "  -> Copying '$conf_file' to '$DEST_DIR'"
    cp "$conf_file" "$DEST_FILE"
done

echo "✅ All files processed successfully."
