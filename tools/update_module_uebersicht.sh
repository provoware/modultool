#!/bin/bash
# tools/update_module_uebersicht.sh - aktualisiert module_übersicht.txt
# Sammelt alle Module aus modules.json und fügt sie der Liste hinzu, falls sie noch nicht vorhanden sind.

LIST_FILE="module_übersicht.txt"
MODULES_JSON="modules.json"

touch "$LIST_FILE"

jq -r '.[] | "\(.id): \(.title)"' "$MODULES_JSON" | while IFS= read -r entry; do
    if ! grep -Fxq "$entry" "$LIST_FILE"; then
        echo "$entry" >> "$LIST_FILE"
    fi
done

exit 0
