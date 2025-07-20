# Projekt\u00fcbersicht

Das Modultool ist ein Baukasten f\u00fcr Inhalte. Es l\u00e4uft lokal auf dem Rechner
und bietet viele Module zum Sammeln, Strukturieren und Exportieren von Texten.
Dazu gibt es Hilfsskripte f\u00fcr Pflege und Pr\u00fcfung.

## Wichtigste Befehle

- `bash tools/start_tool.sh`\u00a0\u2013 startet das Werkzeug im Browser
- `bash tools/selfcheck.sh`\u00a0\u2013 sucht nach typischen Fehlern
- `bash tools/manage_projects.sh`\u00a0\u2013 verwaltet mehrere Projektordner
- `bash tools/zip_backup.sh`\u00a0\u2013 erstellt ein ZIP-Backup
- `node tools/create_module.js ID "Titel"`\u00a0\u2013 legt ein neues Modul an

## Zentrale Ordner

- `modules/`\u00a0\u2013 JavaScript-Dateien f\u00fcr die Module
- `panels/`\u00a0\u2013 HTML-Oberfl\u00e4chen der Module
- `data/`\u00a0\u2013 Aufgabenlisten und Sicherungen
- `tools/`\u00a0\u2013 Hilfsskripte f\u00fcr Wartung und Tests
- `logs/`\u00a0\u2013 Protokolle bei Fehlern

## Beispielmodule

- Genre-Liste & Zufall (`panel01`)
- Persona-Switcher (`panel05`)
- Direkt-Export (`exporter`)
- ZIP-Backup (`zipbackup`)

# Vollbeschreibung

## Start und Bedienung

Das Tool wird mit `npm start` oder dem Skript `bash tools/start_tool.sh`
aufgerufen. Es \u00f6ffnet eine lokale Webseite mit allen Panels. Ein kleines
Willkommensfenster l\u00e4sst sich mit **Esc** schließen.
Die Module sind in `modules.json` eingetragen und lassen sich \u00fcber die rechte
Sidebar ein- oder ausblenden. Favoriten k\u00f6nnen oben fixiert werden.

## Selbstcheck

`bash tools/selfcheck.sh` f\u00fchrt HTML-, JSON- und Shell-Pr\u00fcfungen durch. Er
sichert auch `todo.txt` in `data/todo_backup_<Datum>.txt` und aktualisiert
`baumstruktur.txt`.

## Projekte verwalten

Mit `bash tools/manage_projects.sh` lassen sich eigene Projektordner anlegen.
`list`, `create NAME`, `set NAME` und `delete NAME` steuern die Ordner. `current`
zeigt das aktive Projekt an.

## Backups

Das Skript `bash tools/zip_backup.sh` erzeugt eine gepackte Sicherung aller
wichtigen Dateien. Die ZIP-Datei landet im aktuellen Ordner und enth\u00e4lt
die Module, Panels und Daten.

## Tests und Build

- `npm test` startet die vorhandenen Unit-Tests.
- `npm run selfcheck` ruft den Selfcheck auf.
- `npm run build` kompiliert TypeScript-Dateien.

## Weitere Hilfe

Ausf\u00fchrliche Anleitungen stehen in [LAIENHILFE.md](LAIENHILFE.md) und in der
[DOKUMENTATION.md](DOKUMENTATION.md). Beide Dateien verwenden einfache Sprache
und erl\u00e4utern Fachbegriffe in Klammern.
