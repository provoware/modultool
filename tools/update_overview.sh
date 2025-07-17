#!/bin/bash
# tools/update_overview.sh - aktualisiert all_in_uebersicht.txt und prueft Dateien

UEBERSICHT="all_in_uebersicht.txt"
ERROR_LOG="error_informationen.txt"

# Datei anlegen, falls nicht vorhanden
[ -f "$UEBERSICHT" ] || touch "$UEBERSICHT"
[ -f "$ERROR_LOG" ] || touch "$ERROR_LOG"

# Alle Dateien im Projekt finden (ohne .git)
find . -type f ! -path "./.git/*" | sort > /tmp/uebersicht_neu.txt

# Neue Dateien in die Liste aufnehmen
while IFS= read -r file; do
  grep -Fxq "$file" "$UEBERSICHT" || echo "$file" >> "$UEBERSICHT"
done < /tmp/uebersicht_neu.txt

# Existenz jeder gelisteten Datei pruefen
while IFS= read -r file; do
  if [ ! -e "$file" ]; then
    echo "$(date '+%Y-%m-%d %H:%M:%S') - Fehlend: $file" >> "$ERROR_LOG"
  fi
done < "$UEBERSICHT"

rm /tmp/uebersicht_neu.txt

echo "✅ all_in_uebersicht.txt aktualisiert."
