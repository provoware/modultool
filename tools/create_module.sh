#!/bin/bash
# tools/create_module.sh - Erstellt ein neues Modul aus der Vorlage

if [ $# -lt 2 ]; then
  echo "Nutzung: $0 modul_id \"Titel des Moduls\""
  exit 1
fi

ID="$1"
TITLE="$2"
TEMPLATE="modules/panel_template.html"
TARGET="modules/${ID}.html"

if [ ! -f "$TEMPLATE" ]; then
  echo "Vorlage $TEMPLATE fehlt."
  exit 1
fi

if [ -f "$TARGET" ]; then
  echo "Datei $TARGET existiert bereits."
  exit 1
fi

cp "$TEMPLATE" "$TARGET"
sed -i "s/{{ID}}/$ID/g" "$TARGET"
sed -i "s/{{TITLE}}/$TITLE/g" "$TARGET"

if command -v jq >/dev/null 2>&1; then
  tmp=$(mktemp)
  jq --arg id "$ID" --arg title "$TITLE" --arg file "modules/${ID}.html" '. += [{"id":$id,"title":$title,"file":$file}]' modules.json > "$tmp" && mv "$tmp" modules.json
  echo "Eintrag in modules.json ergänzt."
else
  echo "jq fehlt – bitte modules.json manuell anpassen."
fi

echo "✅ Modul $ID erstellt: $TARGET"
