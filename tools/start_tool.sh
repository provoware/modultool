#!/bin/bash
# tools/start_tool.sh - Startet einen lokalen Server und öffnet den Browser

# Standardseite des Tools
URL="http://localhost:8000/index-MODULTOOL.html"
echo "🌐 Starte lokalen Server ..."
python3 -m http.server >/tmp/modultool_server.log 2>&1 &
PID=$!
sleep 1
if command -v xdg-open >/dev/null; then
  xdg-open "$URL" &
elif command -v open >/dev/null; then
  open "$URL" &
else
  echo "Bitte Browser manuell öffnen und $URL aufrufen"
fi
echo "👍 Server läuft (Beenden mit Strg+C)"
wait $PID
