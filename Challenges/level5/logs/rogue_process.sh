#!/bin/bash
# This script writes the flag to a log file and keeps running in the background

LOG_FILE="$(dirname "$(realpath "$0")")/flag_log.txt"

while true; do
  echo "FLAG{Proc_M4st3r_Cl3ar}" > "$LOG_FILE"
  sleep 5
  rm -f "$LOG_FILE"
  sleep 5
done
