#!/bin/bash
# tools/offline_help.sh - Erstellt eine PDF-Version der LAIENHILFE

OUT="assets/laienhilfe.pdf"

if command -v pandoc >/dev/null 2>&1; then
  pandoc LAIENHILFE.md -o "$OUT"
  echo "PDF gespeichert: $OUT"
else
  echo "Pandoc fehlt. Installiere es z.B. mit 'sudo apt install pandoc'."
  exit 1
fi

