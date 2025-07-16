#!/bin/bash
# tools/selfcheck.sh – Automatischer System- und Dateicheck für Modultool

echo "🧪 Selfcheck gestartet..."

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
  for f in $(find . -name "*.json"); do
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
echo "📑 Aktualisiere platzhalter.txt ..."
bash tools/update_placeholder.sh
echo "✅ platzhalter.txt aktualisiert."

# ========== Abschluss ==========
echo "✅ Selfcheck abgeschlossen. Alles bereit!"
