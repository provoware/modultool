#!/bin/bash
# tools/manage_projects.sh - Projektordner verwalten

set -e
PROJECTS_DIR="projects"
ACTIVE_FILE="data/active_project.txt"

mkdir -p "$PROJECTS_DIR"

case "$1" in
  list)
    echo "Verfügbare Projekte:";
    active=""; [ -f "$ACTIVE_FILE" ] && active=$(cat "$ACTIVE_FILE")
    for p in "$PROJECTS_DIR"/*; do
      [ -d "$p" ] || continue
      bn=$(basename "$p")
      if [ "$bn" = "$active" ]; then
        echo "* $bn (aktiv)"
      else
        echo "  $bn"
      fi
    done
    [ -z "$(ls -A "$PROJECTS_DIR")" ] && echo "(keine)";
    ;;
  create)
    if [ -z "$2" ]; then
      echo "Name fehlt. Beispiel: $0 create meinprojekt";
      exit 1;
    fi
    mkdir -p "$PROJECTS_DIR/$2";
    echo "Projekt '$2' angelegt.";
    ;;
  set)
    if [ -z "$2" ]; then
      echo "Name fehlt. Beispiel: $0 set meinprojekt";
      exit 1;
    fi
    if [ ! -d "$PROJECTS_DIR/$2" ]; then
      echo "Projekt '$2' existiert nicht.";
      exit 1;
    fi
    echo "$2" > "$ACTIVE_FILE";
    echo "Aktives Projekt: $2";
    ;;
  current)
    if [ -f "$ACTIVE_FILE" ]; then
      echo "Aktives Projekt: $(cat "$ACTIVE_FILE")"
    else
      echo "Kein Projekt ausgewählt."
    fi
    ;;
  delete)
    if [ -z "$2" ]; then
      echo "Name fehlt. Beispiel: $0 delete meinprojekt";
      exit 1;
    fi
    if [ ! -d "$PROJECTS_DIR/$2" ]; then
      echo "Projekt '$2' existiert nicht.";
      exit 1;
    fi
    read -p "Wirklich löschen? [y/N] " ans; 
    if [ "$ans" = "y" ] || [ "$ans" = "Y" ]; then
      rm -rf "$PROJECTS_DIR/$2";
      if [ -f "$ACTIVE_FILE" ] && [ "$(cat "$ACTIVE_FILE")" = "$2" ]; then
        rm -f "$ACTIVE_FILE";
      fi
      echo "Projekt '$2' entfernt.";
    else
      echo "Abgebrochen.";
    fi
    ;;
  *)
    echo "Verwendung: $0 {list|create NAME|set NAME|delete NAME}";
    exit 1;
    ;;
esac

