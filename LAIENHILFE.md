# Laienhilfe

Hier findest du einfache Tipps zum Umgang mit dem Projekt. Fachbegriffe stehen in Klammern und werden kurz erklärt.

## Aufgaben anschauen und aktualisieren

1. Öffne das Terminal (Befehlseingabe).
2. Tippe `nano todo.txt` und drücke **Enter**. Dadurch öffnest du die Liste mit offenen Aufgaben.
3. Ergänze neue Punkte oder hake sie ab. Speichere mit `Strg+O`, beende mit `Strg+X`.
4. Danach `bash tools/update_placeholder.sh` ausführen. Das aktualisiert `platzhalter.txt` automatisch.

## Selbstcheck starten

Der Selbstcheck prüft das Projekt auf häufige Fehler.

```bash
bash tools/selfcheck.sh
```
Dabei wird automatisch `platzhalter.txt` auf Basis von `todo.txt` aktualisiert.

Falls Meldungen erscheinen, befolge die Tipps. Zum Beispiel wird `htmlhint` erwähnt, wenn es fehlt. Dann kannst du es mit `npm install -g htmlhint` (JavaScript-Prüfwerkzeug) installieren.

## Änderungen sichern

1. Mit `git status` siehst du geänderte Dateien.
2. `git add dateiname` fügt sie zur Sicherung hinzu.
3. `git commit -m "Kurze Beschreibung"` speichert die Änderungen dauerhaft.
4. `git push` überträgt alles ins Online-Repository.

So behältst du jederzeit die Kontrolle über deine Dateien.

## Tool starten

Am einfachsten nutzt du das Startskript. Es erledigt alles für dich.

```bash
bash tools/start_tool.sh
```

Damit startet ein Server (kleines Programm zur Bereitstellung der Dateien) und öffnet die Seite automatisch im Browser.

1. Wechsel im Terminal in den Projektordner.
2. Starte einen kleinen Webserver mit `python3 -m http.server`. (Damit werden die Dateien lokal bereitgestellt.)
3. Öffne dann `http://localhost:8000/index-DDD.html` im Browser (Programm zum Surfen im Internet).
4. Mit `Strg+C` beendest du den Server wieder.

## Eigene Module erstellen

1. Lege die Ordner `modules` und `panels` an, falls sie fehlen. Das machst du im Terminal (Eingabeprogramm) so:
   ```bash
   mkdir modules panels
   ```
2. Erstelle in `modules/` deine Skriptdatei, zum Beispiel `beispiel.js`:
   ```bash
   nano modules/beispiel.js
   ```
   *(JavaScript-Datei mit Funktionen)*
3. Für die Oberfläche legst du `panels/beispiel.html` an:
   ```bash
   nano panels/beispiel.html
   ```
   *(HTML-Datei für das Aussehen)*
4. Trage beide Dateien in `modules.json` ein. JSON ist ein Textformat, in dem Daten in Listen gespeichert werden:
   ```json
   {
     "id": "beispiel",
     "name": "Mein Modul",
     "file": "panels/beispiel.html"
   }
   ```
5. Starte das Tool wieder mit `bash tools/start_tool.sh`.

Damit kannst du eigene Module testen.

## Weitere nützliche Befehle

- `git pull` – holt neue Änderungen aus dem Online-Archiv (**Repository**) auf deinen Rechner.
- `git log` – zeigt die letzten gespeicherten Versionen (**Commits**).
- `npm install -g htmlhint` – installiert das Programm **htmlhint** (prüft HTML).
- `python3 -m http.server 9000` – startet einen Server auf Port 9000 (*Port = Anschlussnummer*).
- `bash tools/update_placeholder.sh` – kopiert Aufgaben aus `todo.txt` in `platzhalter.txt`.
- `git diff` – zeigt deine aktuellen Änderungen (**Diff** = Unterschiede zum letzten Stand).
- `sudo apt-get install xclip` – installiert `xclip` (Hilfsprogramm für die Zwischenablage).
- `grep -n SUCHBEGRIFF -r` – durchsucht alle Dateien nach einem Wort (praktisch bei vielen Dateien).
- `git stash` – legt deine aktuellen Änderungen kurz ab (*Stash = Zwischenablage in Git*).
- `cp -r ordner ordner_backup` – macht eine komplette Kopie eines Ordners (*Backup = Sicherungskopie*).
- `less datei.txt` – zeigt Text seitenweise an (*Pager = Blättern im Terminal*).
- `history | tail` – listet die letzten Befehle auf (*History = Verlauf*).
