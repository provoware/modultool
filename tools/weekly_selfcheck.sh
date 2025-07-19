#!/bin/bash
# tools/weekly_selfcheck.sh - wöchentlicher Selfcheck-Aufruf
# Ruft selfcheck.sh auf und protokolliert das Ergebnis
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR/.." || exit 1
logdir="logs"
mkdir -p "$logdir"
logfile="$logdir/weekly_selfcheck.log"

echo "$(date '+%Y-%m-%d %H:%M:%S') Selfcheck gestartet" >> "$logfile"
bash "$SCRIPT_DIR/selfcheck.sh" >> "$logfile" 2>&1

printf "Selfcheck beendet: %s\n" "$(date '+%Y-%m-%d %H:%M:%S')" >> "$logfile"
