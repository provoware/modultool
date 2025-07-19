#!/bin/bash
# tools/security_check.sh - führt eine Sicherheitsprüfung der Node-Pakete durch

if ! command -v npm >/dev/null 2>&1; then
  echo "npm ist nicht installiert. Bitte erst Node.js und npm einrichten."
  exit 1
fi

echo "🔍 Starte Sicherheitsprüfung der Pakete..."
if npm audit fix; then
  echo "✅ Sicherheitsprüfung abgeschlossen."
else
  echo "⚠️ npm audit fix konnte nicht alle Probleme lösen."
fi
