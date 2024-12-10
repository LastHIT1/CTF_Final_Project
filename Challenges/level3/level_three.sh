#!/bin/bash

# Set the base directory to the current script's location
BASE_DIR="$(dirname "$(realpath "$0")")"

# Create the base maze directory
MAZE_DIR="$BASE_DIR/maze"
mkdir -p "$MAZE_DIR"

# Create a multi-level maze of directories
for i in {1..5}; do
  LEVEL_DIR="$MAZE_DIR/level_$i"
  mkdir -p "$LEVEL_DIR"
  for j in {1..5}; do
    echo "Nothing here." > "$LEVEL_DIR/fake_file_$j.txt"
  done
done

# Add the flag in one random file deep in the maze
echo "FLAG{D1r3ct0ry_D3pth_M4st3r}" > "$MAZE_DIR/level_3/real_flag.txt"

# Add a decoy flag in an easy-to-spot location
echo "FLAG{Th1s_1s_F4k3}" > "$MAZE_DIR/level_1/decoy_flag.txt"

# Provide a hint file in the main level3 directory
echo "Hint: The real flag is in a file named 'real_flag.txt'. Use 'find' to locate it efficiently." > "$BASE_DIR/README.txt"

# Display instructions for the user
cat <<EOL
Welcome to Level 3: The Misleading Maze!

Your objective is to navigate the directory maze and locate the real flag.

Steps to succeed:
1. Use Linux commands like 'find' or explore the directories manually.
2. Identify the file named 'real_flag.txt' and extract its contents.
3. Ignore the decoy flag in 'level_1'.

Good luck!
EOL
