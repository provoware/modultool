#!/bin/bash
# tools/update_placeholder.sh - aktualisiert platzhalter.txt basierend auf todo.txt

TODO_FILE="todo.txt"
PLACEHOLDER="platzhalter.txt"

# Datum und Uhrzeit erfassen
{
  echo "Letztes Update: $(date)"
  echo
  if [ -f "$TODO_FILE" ]; then
    if [ -s "$TODO_FILE" ]; then
      echo "Offene Aufgaben:" 
      cat "$TODO_FILE"
    else
      echo "Keine offenen Aufgaben."
    fi
  else
    echo "todo.txt nicht gefunden."
  fi
} > "$PLACEHOLDER"

exit 0
