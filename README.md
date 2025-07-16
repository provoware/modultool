# 🧰 Modultool

**Modulares Content-Creation-Tool mit Fokus auf Barrierefreiheit, Systemkritik & Selbstheilung.**  
Entwickelt für kreative Subkulturen, Performerinnen, Künstler & Content-Schaffende.

---

## 🎯 Ziele

- Offline lauffähiges Creator-Tool für Text, Audio, Bild & Video
- Laientauglich, fehlerrobust & barrierefrei
- Visuell strukturierte Bedienung über GUI
- Modular erweiterbar mit globalem Plugin-System

---

## 🧩 Aktuelle Start-Module

- **🎲 Genre-Archiv & Eingabe**  
  → Speicherung, Duplikatsprüfung, Komma-getrennte Eingaben  
- **🧠 Zufallsgenerator**  
  → mit Auswahlmodi, Logging, Favoriten und Export

---

## 🧠 Features

- Drag & Drop für Medien, Module, Templates
- Undo-/Redo-System, ZIP-Export, Selfcheck
- Live-Vorschau, große Bedienelemente, Einstellungs-Panel
- Projektordner-Management + Fehlerkorrektur

---

## 📦 Struktur

```text
📁 panels/
📁 modules/
📁 data/ (baumstruktur.txt, todo.txt)
📄 platzhalter.txt
📁 logs/
📁 tools/ (selfcheck.sh)
📁 .github/workflows/ (validate.yml)

## ℹ️ Erste Schritte

0. Alles automatisch starten:
   ```bash
   bash tools/start_tool.sh
   ```
   Damit startet ein lokaler Server und der Browser öffnet sich von selbst.
1. Lokalen Server starten:
   ```bash
   python3 -m http.server
   ```
   Damit kannst du `index-DDD.html` im Browser (Programm zum Surfen im Internet) über `http://localhost:8000/index-DDD.html` aufrufen.
2. Selfcheck ausführen:
   ```bash
   bash tools/selfcheck.sh
   ```
   Das Skript aktualisiert automatisch `platzhalter.txt`.
3. Mehr Tipps findest du in `LAIENHILFE.md`.

## 🛠 Eigene Module einbinden

1. Lege deine Skripte im Ordner `modules/` ab. (Skript = Datei mit Befehlen, z.B. in JavaScript.)
2. Speichere zugehörige Oberflächen in `panels/` als HTML-Dateien.
3. Trage den Dateinamen in `modules.json` ein. Diese Datei ist im **JSON-Format** (Textstruktur für Datenlisten). Beispiel:

   ```json
   {
     "id": "beispiel",
     "name": "Mein Modul",
     "file": "panels/beispiel.html"
  }
  ```

Damit weiß das Tool, welche Module geladen werden sollen. Starte anschließend wieder mit `bash tools/start_tool.sh`.
Im Repository gibt es auch ein Beispielmodul `panel7` namens "Schnellhilfe" mit weiteren Kommandos.
Neu hinzu kommt `panel8` für einen gewichteten Zufallsgenerator und `panel9` als kleine Befehlsreferenz.

## 📈 Weiterführende Tipps

* `git pull` – holt die neueste Version aus dem Online-Archiv (**Repository**) auf deinen Rechner.
* `git log` – zeigt dir eine Liste der letzten Änderungen (**Commits**).
* `npm install -g htmlhint` – installiert das Prüfprogramm **htmlhint** (kontrolliert HTML-Dateien).
* `python3 -m http.server 9000` – startet den Server auf Port 9000 (*Port = Anschlussnummer*).
* `bash tools/update_placeholder.sh` – überträgt die Einträge aus `todo.txt` nach `platzhalter.txt`.
* `git diff` – zeigt deine aktuellen Änderungen (**Diff** = Unterschiede zum letzten Stand).
* `sudo apt-get install xclip` – installiert `xclip` (Hilfsprogramm für die Zwischenablage).
* `grep -n SUCHBEGRIFF -r` – sucht nach einem Wort in allen Dateien (Textsuche im Projekt).
* `git stash` – legt deine aktuellen Änderungen kurzzeitig beiseite (*Stash = Zwischenablage in Git*).
* `cp -r ordner ordner_backup` – erstellt eine komplette Kopie eines Ordners (*Backup = Sicherungskopie*).
* `less datei.txt` – zeigt den Inhalt seitenweise an (*Pager = Blättern im Terminal*).
* `history | tail` – listet die letzten Befehle auf (*History = Verlauf*).
* `git branch -a` – zeigt alle Zweige an (*Branch = Entwicklungszweig*).
* `git checkout -b neuer_zweig` – legt einen neuen Branch an und wechselt hinein (*checkout = zu einem Zweig wechseln*).
* `git merge anderer_zweig` – führt einen Branch in den aktuellen zusammen (*Merge = Zusammenführen*).
* `curl -O URL` – lädt eine Datei aus dem Internet herunter (*curl = Download-Programm*).
* `git cherry-pick COMMIT` – übernimmt gezielt eine Änderung (*Cherry-Pick = einzelne Auswahl*).
* `tail -f datei.log` – zeigt laufend neue Logzeilen an (*tail = Dateiende lesen*).
* `chmod +x script.sh` – macht ein Skript ausführbar (*chmod = Rechte ändern*).
* `npm install` – lädt alle benötigten Pakete (*npm = Paketverwaltung*).
* `git remote -v` – zeigt die gespeicherten Online-Adressen (*Remote = entfernte Quelle*).
* `git reset --hard HEAD~1` – macht den letzten Stand rückgängig (*Reset = zurücksetzen*).
* `tar -czf backup.tar.gz ordner/` – erstellt ein gepacktes Archiv eines Ordners (*Backup = Sicherung*).
* `git tag -a v1.0 -m "Version 1.0"` – legt eine Versionsmarke an (*Tag = Markierung*).
* `rsync -av quelle/ ziel/` – kopiert Dateien effizient (*rsync = Synchronisationsprogramm*).
* `git config --global user.name "Dein Name"` – setzt deinen Namen für künftige Commits (*config = Einstellung*).
* `git config --global user.email "mail@example.com"` – speichert deine E-Mail für Git (*global = für alle Projekte*).
* `find . -name "*.html"` – sucht nach allen HTML-Dateien im Ordner (*find = Dateien finden*).
* `sudo apt-get install shellcheck` – installiert **shellcheck** (prüft Shellskripte).
