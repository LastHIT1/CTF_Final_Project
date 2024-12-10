#!/bin/bash

# Set the base directory to the current script's location
BASE_DIR="$(dirname "$(realpath "$0")")"

# Create the restricted directory and hidden flag
RESTRICTED_DIR="$BASE_DIR/secure_area"
HIDDEN_FLAG_DIR="$BASE_DIR/.hidden_flag"  # Use a hidden directory

mkdir -p "$RESTRICTED_DIR"
mkdir -p "$HIDDEN_FLAG_DIR"

# Create a fake flag inside the restricted area
echo "This is not the real flag. Keep looking!" > "$RESTRICTED_DIR/fake_flag.txt"

# Place the real flag in the hidden directory
echo "FLAG{Esc4p3_Th3_Restr1ct10n}" > "$HIDDEN_FLAG_DIR/real_flag.txt"

# Restrict permissions on the restricted directory
chmod 000 "$RESTRICTED_DIR"

# Provide a hint file in the main level4 directory
echo "Hint: Use 'find' or 'ls -a' to locate the flag." > "$BASE_DIR/README.txt"

# Display instructions for the user
cat <<EOL
Welcome to Level 4: Escaping the Restricted Directory!

Your objective is to locate the real flag file outside the restricted directory.

Steps to succeed:
1. Identify the restricted directory named 'secure_area'.
2. Search for the hidden file.
3. Use commands like 'find' or 'ls -a'.

Important:
- After completing the challenge, reset access to the restricted directory by running the following command from the directory containing this script:
  chmod 755 "\$(dirname \"\$(realpath level_four.sh)\")/secure_area"

This command will work regardless of your current path or machine setup.

Good luck!
EOL
