#!/bin/bash

# This script creates the Wofi config directory and writes
# your custom transparent grey theme to the style.css file.

# Define the config directory path
CONFIG_DIR="$HOME/.config/wofi"

# Define the CSS file path
CSS_FILE="$CONFIG_DIR/style.css"

# Create the directory if it doesn't exist
mkdir -p "$CONFIG_DIR"

# Write the CSS content into the style.css file using a heredoc
cat > "$CSS_FILE" << EOF
/* Main window */
window {
    /* A dark, semi-transparent grey background */
    background-color: rgba(51, 51, 51, 0.85); /* 85% opacity */
    border: 1px solid rgba(85, 85, 85, 0.9); /* 90% opacity border */
    border-radius: 12px; /* Increased rounded corners */
    
    /* --- Set a small, fixed size --- */
    width: 400px;
    height: 300px;
}

/* Search bar */
#input {
    background-color: rgba(68, 68, 68, 0.9); /* 90% opacity */
    color: #eeeeee; /* Light text */
    border: none;
    border-radius: 8px; /* Rounded input */
    padding: 8px;
    margin: 10px;
    
    /* A subtle bottom border for the input */
    border-bottom: 2px solid rgba(119, 119, 119, 0.5); /* 50% opacity */
}

/* Container for all the entries */
#inner-box {
    margin: 5px;
}

/* A single entry in the list */
#entry {
    color: #eeeeee; /* Light text for entries */
    padding: 8px;
    border-radius: 8px; /* Rounded entries */
}

/* The currently selected entry */
#entry:selected {
    /* A lighter grey, semi-transparent highlight */
    background-color: rgba(102, 102, 102, 0.9); /* 90% opacity */
    color: #ffffff; /* Pure white text for better contrast */
}

/* Text inside an entry */
#text {
    padding-left: 5px;
}
EOF

echo "Wofi style.css has been created at $CSS_FILE"
