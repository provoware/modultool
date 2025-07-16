#!/bin/bash
# tools/autoupdate.sh - holt automatisch Updates aus dem Git-Repo
LOG="logs/update.log"
mkdir -p logs
{
  echo "=== Update $(date) ==="
  if git pull --ff-only; then
    echo "Update erfolgreich"
  else
    echo "Update fehlgeschlagen"
  fi
} >> "$LOG" 2>&1
