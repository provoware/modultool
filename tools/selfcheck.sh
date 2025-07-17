#!/bin/bash
# tools/selfcheck.sh – Automatischer System- und Dateicheck für Modultool

echo "🧪 Selfcheck gestartet..."

# Haupt-ToDo-Dateien festlegen
TODO_MAIN="todo.txt"
TODO_DATA="data/todo.txt"

# Backup der Haupt-ToDo-Datei erstellen
if [ -f "$TODO_MAIN" ]; then
  cp "$TODO_MAIN" "data/todo_backup_$(date +%Y%m%d%H%M%S).txt"
fi

# ========== Branch-Anzahl prüfen ==========
BRANCH_COUNT=$(git branch --list | wc -l)
if [ "$BRANCH_COUNT" -gt 2 ]; then
  echo "⚠️ Hinweis: Mehr als 2 Branches vorhanden ($BRANCH_COUNT)."
fi

# ToDo-Dateien synchronisieren
if [ -f "$TODO_MAIN" ]; then
  if [ ! -f "$TODO_DATA" ] || ! diff -q "$TODO_MAIN" "$TODO_DATA" >/dev/null; then
    cp "$TODO_MAIN" "$TODO_DATA"
  fi
fi

# ========== Allgemeine Systemhinweise ==========
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  echo "📦 System: Linux"
else
  echo "⚠️ Hinweis: Nicht auf Linux – bitte Unix-Zeilenenden (LF) verwenden!"
fi

# ========== Windows-Zeilenumbrüche prüfen ==========
bad_linebreaks=$(grep -Il $'\r' tools/selfcheck.sh)
if [ -n "$bad_linebreaks" ]; then
  echo "❌ Fehler: Datei enthält Windows-Zeilenumbrüche (CRLF): $bad_linebreaks"
  echo "💡 Tipp: dos2unix tools/selfcheck.sh"
  exit 1
fi

# ========== JSON-Dateien prüfen ==========
echo "📂 JSON-Dateien werden geprüft..."
if command -v jq >/dev/null 2>&1; then
  find . -name "*.json" | while read -r f; do
    if jq empty "$f" >/dev/null 2>&1; then
      echo "✅ OK: $f"
    else
      echo "❌ Fehlerhafte JSON-Datei: $f"
    fi
  done
else
  echo "⚠️ jq nicht installiert – JSON-Check übersprungen"
fi

# ========== HTML-Dateien prüfen ==========
echo "🌐 HTML-Validierung..."
if command -v htmlhint >/dev/null 2>&1; then
  find . -name "*.html" -exec htmlhint {} \;
else
  echo "⚠️ htmlhint nicht installiert – HTML-Check übersprungen"
fi

# ========== YAML-Dateien prüfen ==========
echo "📄 YAML-Dateien werden geprüft..."
if command -v yamllint >/dev/null 2>&1; then
  find . \( -name "*.yml" -o -name "*.yaml" \) -exec yamllint -d relaxed {} \;
else
  echo "⚠️ yamllint nicht installiert – YAML-Check übersprungen"
fi

# ========== Shell-Skripte prüfen ==========
echo "🐚 Shellskripte prüfen..."
if command -v shellcheck >/dev/null 2>&1; then
  find . -name "*.sh" -exec shellcheck {} \;
else
  echo "⚠️ shellcheck nicht installiert – Shell-Check übersprungen"
fi

# ========== ToDo-Datei prüfen ==========
echo "🗒 ToDo-Datei:"
if [ -s data/todo.txt ]; then
  echo "➡️ Letzte Einträge:"
  tail -n 5 data/todo.txt
else
  echo "ℹ️ Keine offenen ToDos oder Datei leer."
fi

# ========== Baumstruktur aktualisieren ==========
echo "🌲 Aktualisiere baumstruktur.txt ..."
find . -type f ! -path "./.git/*" ! -name "*.log" | sort > data/baumstruktur.txt
echo "✅ baumstruktur.txt aktualisiert."

# ========== Platzhalter aktualisieren ==========
if [ -x tools/update_placeholder.sh ]; then
  bash tools/update_placeholder.sh
  echo "✅ platzhalter.txt aktualisiert."
else
  echo "⚠️ update_placeholder.sh nicht gefunden oder nicht ausführbar"
fi

# ========== Merge-Konfliktmarker prüfen ==========
echo "🔍 Suche nach Merge-Konflikten..."
conflicts=$(grep -R "^<<<<<<<" -n --exclude-dir=.git || true)
if [ -n "$conflicts" ]; then
  echo "❌ Unaufgelöste Konflikte gefunden:" && echo "$conflicts"
fi

# ========== Abschluss ==========
echo "✅ Selfcheck abgeschlossen. Alles bereit!"
