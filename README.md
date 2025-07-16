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

## 📈 Weiterführende Tipps

* `git pull` – holt die neueste Version aus dem Online-Archiv (**Repository**) auf deinen Rechner.
* `git log` – zeigt dir eine Liste der letzten Änderungen (**Commits**).
* `npm install -g htmlhint` – installiert das Prüfprogramm **htmlhint** (kontrolliert HTML-Dateien).
* `python3 -m http.server 9000` – startet den Server auf Port 9000 (*Port = Anschlussnummer*).
* `bash tools/update_placeholder.sh` – überträgt die Einträge aus `todo.txt` nach `platzhalter.txt`.
