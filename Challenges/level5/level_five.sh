#!/bin/bash

# Set the base directory to the current script's location
BASE_DIR="$(dirname "$(realpath "$0")")"

# Create a logs directory to store process-related files
LOGS_DIR="$BASE_DIR/logs"
mkdir -p "$LOGS_DIR"

# Create a rogue process script
ROGUE_PROCESS="$LOGS_DIR/rogue_process.sh"

cat <<'EOL' > "$ROGUE_PROCESS"
#!/bin/bash
# This script writes the flag to a log file and keeps running in the background

LOG_FILE="$(dirname "$(realpath "$0")")/flag_log.txt"

while true; do
  echo "FLAG{Proc_M4st3r_Cl3ar}" > "$LOG_FILE"
  sleep 5
  rm -f "$LOG_FILE"
  sleep 5
done
EOL

# Make the rogue process script executable
chmod +x "$ROGUE_PROCESS"

# Start the rogue process in the background
nohup "$ROGUE_PROCESS" > /dev/null 2>&1 &

# Provide a hint file in the main level5 directory
echo "Hint: Use Linux commands to identify and monitor processes. The rogue process is hiding the flag!" > "$BASE_DIR/README.txt"

# Display instructions for the user
cat <<EOL
Welcome to Level 5: Find the Running Process!

Your objective is to:
1. Identify the rogue process running on the system.
2. Extract the hidden flag from the log file it periodically creates.
3. Terminate the rogue process once you have the flag.

Hints:
- Use 'ps aux' and 'grep' to find the process.
- Look for a file named 'flag_log.txt' in the logs directory.
- Use 'kill' to terminate the process after extracting the flag.

Good luck!
EOL
