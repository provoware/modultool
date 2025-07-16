#!/bin/bash
# tools/selfcheck.sh

echo "🧪 Selfcheck gestartet..."

# Windows-Zeilenumbrüche automatisch korrigieren
sed -i 's/\r$//' "$0"

# JSON-Check (nur wenn jsonlint vorhanden)
if command -v jsonlint >/dev/null; then
  find . -name "*.json" -exec jsonlint -q {} \;
fi

# HTML-Hint (optional)
if command -v htmlhint >/dev/null; then
  find . -name "*.html" -exec htmlhint {} \;
fi

# Shellcheck für Skripte
if command -v shellcheck >/dev/null; then
  find . -name "*.sh" -exec shellcheck {} \;
fi

echo "✅ Selfcheck abgeschlossen."
