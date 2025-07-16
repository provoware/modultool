#!/bin/bash
echo "🚀 Starte Setup für Modultool..."

# Zielverzeichnis setzen
PROJECT_DIR=~/Projekte/modultool

mkdir -p $PROJECT_DIR/{panels,modules,data,logs,tools,.github/workflows}

# Standard-Dateien erzeugen
touch $PROJECT_DIR/data/todo.txt
touch $PROJECT_DIR/data/baumstruktur.txt
touch $PROJECT_DIR/tools/selfcheck_fertig.sh
touch $PROJECT_DIR/README_fertig.md
touch $PROJECT_DIR/.gitignore
touch $PROJECT_DIR/.github/workflows/validate_fertig.yml

echo "📁 Struktur erzeugt: $(date)" > $PROJECT_DIR/logs/setup_$(date +%F).log

echo "✅ Setup abgeschlossen für $PROJECT_DIR"
