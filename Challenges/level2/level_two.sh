#!/bin/bash

# Set the base directory to the current script's location
BASE_DIR="$(dirname "$(realpath "$0")")"

# Create a log file within the level2 directory
mkdir -p "$BASE_DIR"
LOG_FILE="$BASE_DIR/server_logs.txt"

# Generate the log file with random data and the hidden flag
cat <<EOL > "$LOG_FILE"
[INFO] 2024-12-03 10:12:34 - User 'admin' logged in.
[DEBUG] 2024-12-03 10:13:21 - System health check OK.
[ERROR] 2024-12-03 10:15:01 - Disk usage exceeded threshold.
[DEBUG] 2024-12-03 10:15:15 - Running cleanup process.
[INFO] 2024-12-03 10:20:00 - FLAG{Gr3p_4nd_AwK_r0cks}
[INFO] 2024-12-03 10:25:42 - Backup completed successfully.
[DEBUG] 2024-12-03 10:30:12 - Application started on port 8080.
EOL

# Provide a hint file
echo "Hint: Search the log file for lines containing the word 'FLAG' and extract the flag using Linux tools." > "$BASE_DIR/README.txt"

# Display instructions for the user
cat <<EOL
Welcome to Level 2: Find the Flag in the Logs!

Your objective is to locate the flag hidden in the log file.

Steps to succeed:
1. Search for the line containing the word 'FLAG' in the log file using 'grep'.
2. Extract the flag from the log line using 'awk'.

Good luck!
EOL
