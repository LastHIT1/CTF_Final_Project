#!/bin/bash

# Set the base directory to the current script's location
BASE_DIR="$(dirname "$(realpath "$0")")"

# Create a hidden folder within the level1 directory
mkdir -p "$BASE_DIR/.hidden_folder"
cd "$BASE_DIR/.hidden_folder"

# Create the hidden file with base64 encoded content
echo "FLAG{d3c0d1ng_1s_fUn}" | base64 > .secret_flag.txt

# Provide a hint file in the main level1 directory
echo "Hint: Use Linux tools to locate hidden files and decode their content." > "$BASE_DIR/README.txt"

# Display instructions for the user
cat <<EOL
Welcome to Level 1: Hidden File with Base64 Encoded Flag!

Your objective is to locate the hidden file in this directory and decode its content to find the flag.

Steps to succeed:
1. Use commands like 'ls -a' or 'find' to locate hidden files.
2. Use 'cat' and 'base64 -d' to decode the file content.

Good luck!
EOL
