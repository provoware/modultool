#!/bin/bash
echo "🧪 Selfcheck gestartet..."

# JSON-Check
find . -name "*.json" -exec jsonlint -q {} \;

# HTML-Hint
find . -name "*.html" -exec htmlhint {} \;

# Shell-Skripte
find . -name "*.sh" -exec shellcheck {} \;

echo "✅ Selfcheck abgeschlossen."
