#!/bin/bash
set -e
OUT="modultool_backup_$(date +%Y%m%d_%H%M%S).zip"
if ! command -v zip >/dev/null 2>&1; then
  echo "zip not installed"
  exit 1
fi
zip -r "$OUT" data/ modules/ panels/ plugins/ index-MODULTOOL.html >/dev/null
echo "Backup gespeichert: $OUT"
