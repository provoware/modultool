#!/bin/bash
# tools/selfcheck.sh – korrigierte Fassung

echo "🧪 Selfcheck gestartet..."

# JSON-Check (optional)
if command -v jsonlint >/dev/null; then
  find . -name "*.json" -exec jsonlint -q {} \;
else
  echo "⚠️ jsonlint nicht installiert"
fi

# HTML-Hint
if command -v htmlhint >/dev/null; then
  find . -name "*.html" -exec htmlhint {} \;
else
  echo "⚠️ htmlhint nicht installiert"
fi

# Shellcheck
if command -v shellcheck >/dev/null; then
  find . -name "*.sh" -exec shellcheck {} \;
else
  echo "⚠️ shellcheck nicht installiert"
fi

echo "✅ Selfcheck abgeschlossen."
