#!/bin/bash
# tools/manage_projects.sh - Projektordner verwalten

set -e
PROJECTS_DIR="projects"
ACTIVE_FILE="data/active_project.txt"

mkdir -p "$PROJECTS_DIR"

case "$1" in
  list)
    echo "Verfügbare Projekte:";
    ls "$PROJECTS_DIR" || echo "(keine)";
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

