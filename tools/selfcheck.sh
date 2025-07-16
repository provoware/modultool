#!/bin/bash
# tools/selfcheck.sh – Validierungs- und Prüfsystem für Modultool
# Ziel: Fehler durch Laieneingaben automatisch erkennen und Hinweise geben

echo "🧪 Selfcheck gestartet..."

# --- Prüfe auf Windows-Zeilenumbrüche (CRLF) ---
if file "$0" | grep -q "CRLF"; then
  echo "⚠️ WARNUNG: Dieses Skript enthält Windows-Zeilenumbrüche (CRLF)"
  echo "➡ Bitte führe aus: dos2unix tools/selfcheck.sh"
  exit 1
fi

# --- JSON-Dateien prüfen (Strukturfehler etc.) ---
if command -v jq >/dev/null; then
  echo "📂 JSON-Dateien werden geprüft..."
  find . -type f -name "*.json" | while read -r file; do
    if ! jq empty "$file" 2>/dev/null; then
      echo "❌ Fehlerhafte JSON-Datei: $file"
    else
      echo "✅ JSON OK: $file"
    fi
  done
else
  echo "⚠️ 'jq' nicht installiert – JSON-Validierung übersprungen"
fi

# --- HTML-Dateien prüfen ---
if command -v htmlhint >/dev/null; then
  echo "🌐 HTML-Dateien werden geprüft..."
  find . -name "*.html" -exec htmlhint {} \;
else
  echo "⚠️ htmlhint nicht gefunden – HTML-Check übersprungen"
fi

# --- Shell-Skripte prüfen mit ShellCheck ---
if command -v shellcheck >/dev/null; then
  echo "🐚 Shellskripte werden geprüft..."
  find . -name "*.sh" -exec shellcheck {} \;
else
  echo "⚠️ shellcheck nicht installiert – Shellprüfung übersprungen"
fi

# --- To-Do-Check ---
echo "🗒 todo.txt Analyse:"
if [ -s data/todo.txt ]; then
  tail -n 5 data/todo.txt
else
  echo "ℹ️ Keine offenen ToDos vorhanden oder Datei leer."
fi

# --- Baumstruktur-Aktualisierung ---
echo "🌲 Aktualisiere baumstruktur.txt ..."
find . -type f ! -path "./.git/*" ! -name "*.log" > data/baumstruktur.txt

echo "✅ Selfcheck abgeschlossen."
