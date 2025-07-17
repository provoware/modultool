# DOKUMENTATION

Diese Datei hilft dir, das Modultool ohne Vorwissen zu benutzen. Jeder Fachbegriff steht in Klammern und wird kurz erklärt. Folge den Schritten in der Reihenfolge.

## 1. Projekt überblick

- **todo.txt** – Liste offener Aufgaben.
- **platzhalter.txt** – Kopie der Aufgabenliste mit Datum.
- **data/** – Ablage für Sicherungen, z.B. `baumstruktur.txt` (Projektückersicht).
- **tools/** – Hilfsskripte wie `selfcheck.sh` und `update_placeholder.sh`.

## 2. Aufgaben pflegen

1. `nano todo.txt` – Aufgaben bearbeiten (falls Nano fehlt, kann `vi` genutzt werden).
2. Speichern und danach `bash tools/update_placeholder.sh` ausführen.
   Dadurch wird `platzhalter.txt` automatisch aktualisiert.

## 3. Selbstcheck ausführen

Das Skript prüft typische Fehler und aktualisiert die Strukturliste.

```bash
bash tools/selfcheck.sh
```

Falls Hinweise auf fehlende Programme erscheinen, lassen sie sich meist mit `apt install` (Linux-Paketverwaltung) oder `npm install -g` (Node-Paketmanager) nachinstallieren.

## 4. Änderungen sichern

```bash
git status      # zeigt geänderte Dateien
git add DATEI   # Datei zur Sicherung vormerken
git commit -m "Nachricht"  # dauerhaft speichern
git push        # ins Online-Repository hochladen
```

## 5. Module testen

- `modules/panel01.html` im Browser öffnen.
- Genres eingeben, speichern, Zufall wählen und Ergebnis kopieren.

## Wichtige Befehle im Überblick

| Befehl | Kurzbeschreibung |
|--------|-----------------|
| `bash tools/update_placeholder.sh` | gleicht `platzhalter.txt` mit `todo.txt` ab |
| `bash tools/selfcheck.sh` | führt diverse Checks (HTML, JSON, Shell) aus |
| `/runs agent_test` | startet die automatischen Prüfungen (CI) |
| `/status agent_name` | prüft den Zustand eines Agenten |
| `/setup github` | setzt GitHub-Workflow und Branch-Schutz auf |
| `/check ordnung` | validiert die Dateistruktur |

## Abhängigkeiten

- **bash** (Unix-Shell) zum Ausführen der Skripte.
- **git** für Versionskontrolle.
- **jq**, **shellcheck**, **htmlhint** (Prüfprogramme für JSON, Shell und HTML).
  Werden sie beim Selfcheck vermisst, mit folgenden Befehlen installieren:
  ```bash
  sudo apt update
  sudo apt install jq shellcheck
  npm install -g htmlhint
  ```
- **node** und **npm** (JavaScript-Laufzeit und Paketmanager) für manche Module.

