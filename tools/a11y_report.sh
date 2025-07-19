#!/bin/bash
# tools/a11y_report.sh - erstellt Barrierefreiheits-Berichte mit axe-core

PORT=${1:-8000}
DIR="$(cd "$(dirname "$0")"/.. && pwd)"
cd "$DIR" || exit 1

LOGDIR="logs/a11y"
mkdir -p "$LOGDIR"

python3 -m http.server "$PORT" >/tmp/a11y_server.log 2>&1 &
PID=$!
sleep 2

for file in index-MODULTOOL.html modules/*.html panels/*.html; do
  [ -f "$file" ] || continue
  OUT="$LOGDIR/$(basename "$file" .html)_report.txt"
  npx axe "http://localhost:$PORT/$file" --quiet > "$OUT" 2>&1 || echo "Fehler bei $file" >> "$OUT"
done

kill $PID

echo "📝 Berichte liegen in $LOGDIR"
