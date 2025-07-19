#!/bin/bash
# tools/start_tool.sh - Startet einen lokalen Server und öffnet den Browser

show_help() {
  cat <<EOF
Nutzung: bash tools/start_tool.sh [OPTION]
  -h, --help        zeigt diese kurze Hilfe
  -n, --no-browser  startet ohne Browser
  -p, --port NUM    nutzt einen anderen Port (Standard 8000)
EOF
}

NO_BROWSER=0
PORT=8000
while [[ $# -gt 0 ]]; do
  case $1 in
    -h|--help)
      show_help
      exit 0
      ;;
    -n|--no-browser)
      NO_BROWSER=1
      shift
      ;;
    -p|--port)
      PORT="$2"
      shift 2
      ;;
    *)
      echo "Unbekannte Option: $1"
      show_help
      exit 1
      ;;
  esac
done

echo "🔄 Suche nach Updates..."
if ! git fetch >/dev/null 2>&1; then
  echo "⚠️ git fetch fehlgeschlagen. Prüfe deine Internetverbindung."
fi
if [ $(git rev-list HEAD..origin/main --count) -gt 0 ]; then
  echo "ℹ️ Es gibt neue Module oder Vorlagen. führe git pull aus."
fi

check_cmd() {
  local cmd=$1
  if ! command -v "$cmd" >/dev/null 2>&1; then
    echo "⚠️ $cmd fehlt. Versuche Installation..."
    if command -v apt-get >/dev/null 2>&1; then
      sudo apt-get update && sudo apt-get install -y "$cmd"
    else
      echo "Bitte $cmd manuell installieren."
    fi
  fi
}

ensure_free_port() {
  check_cmd lsof
  while lsof -i ":$PORT" >/dev/null 2>&1; do
    echo "⚠️ Port $PORT belegt, wechsle auf $((PORT+1))"
    PORT=$((PORT+1))
  done
}

start_server() {
  ensure_free_port
  python3 -m http.server "$PORT" >/tmp/modultool_server.log 2>&1 &
  PID=$!
  sleep 1
  if ! kill -0 "$PID" >/dev/null 2>&1; then
    echo "❌ Serverstart fehlgeschlagen"
    cat /tmp/modultool_server.log
    return 1
  fi
  return 0
}

check_cmd python3
echo "🌐 Starte lokalen Server ..."
if ! start_server; then
  echo "Versuche erneuten Start..."
  start_server || { echo "Server konnte nicht gestartet werden."; exit 1; }
fi

# Standardseite des Tools
URL="http://localhost:$PORT/index-MODULTOOL.html"
echo "🌐 Server läuft auf Port $PORT"


if [ "$NO_BROWSER" -eq 0 ]; then
  if command -v xdg-open >/dev/null; then
    xdg-open "$URL" &
  elif command -v open >/dev/null; then
    open "$URL" &
  else
    echo "Bitte Browser manuell öffnen und $URL aufrufen"
  fi
else
  echo "Browserstart übersprungen (--no-browser)"
fi
echo "👍 Server läuft (Beenden mit Strg+C)"
wait $PID
