#!/bin/bash
# Define the source and destination paths
source_rc_file="$(pwd)/.zshrc"
destination_rc_file="$HOME/.zshrc"

# Check if .zshrc already exists in the home directory
if [ -e "$destination_rc_file" ]; then
    echo "Existing .zshrc found. Backing it up to $HOME/.zshrc.bak"
    mv "$destination_rc_file" "$HOME/.zshrc.bak"
fi

# Create a symbolic link
echo "Creating a symbolic link for .zshrc..."
ln -s "$source_rc_file" "$destination_rc_file"
echo "Installation complete. Please restart your terminal or run 'source ~/.zshrc' to apply changes."

