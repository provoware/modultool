# Laienhilfe

Hier findest du einfache Tipps zum Umgang mit dem Projekt. Fachbegriffe stehen in Klammern und werden kurz erklärt.

## Aufgaben anschauen und aktualisieren

1. Öffne das Terminal (Befehlseingabe).
2. Tippe `nano todo.txt` und drücke **Enter**. Dadurch öffnest du die Liste mit offenen Aufgaben.
3. Ergänze neue Punkte oder hake sie ab. Speichere mit `Strg+O`, beende mit `Strg+X`.
4. Möchtest du `platzhalter.txt` erneuern, kopiere den Inhalt von `todo.txt` manuell hinein.

## Selbstcheck starten

Der Selbstcheck prüft das Projekt auf häufige Fehler.

Dabei wird deine Aufgabenliste automatisch gesichert und
`platzhalter.txt` aktualisiert.

```bash
bash tools/selfcheck.sh
```
4. Öffne `modules/panel14.html` im Browser. Dort siehst du gespeicherte Fehlermeldungen. Mit **Fehler speichern** lädst du sie herunter, **Fehler löschen** leert die Liste.

Falls Meldungen erscheinen, befolge die Tipps. Zum Beispiel wird `htmlhint` erwähnt, wenn es fehlt. Dann kannst du es mit `npm install -g htmlhint` (JavaScript-Prüfwerkzeug) installieren.

## Änderungen sichern

1. Mit `git status` siehst du geänderte Dateien.
2. `git add dateiname` fügt sie zur Sicherung hinzu.
3. `git commit -m "Kurze Beschreibung"` speichert die Änderungen dauerhaft.
4. `git push` überträgt alles ins Online-Repository.

So behältst du jederzeit die Kontrolle über deine Dateien.

## Tool starten

Am einfachsten nutzt du das Startskript. Es erledigt alles für dich.
Mit `-h` oder `--help` zeigt es eine kleine Hilfe an.

```bash
bash tools/start_tool.sh
```
Oder ohne Browserstart:
```bash
bash tools/start_tool.sh --no-browser
```

Einen anderen Port wählst du mit `-p`:
```bash
bash tools/start_tool.sh -p 9000
```
(Port = Anschlussnummer für den Server)

Ob der Standardport frei ist, prüfst du so:
```bash
lsof -i :8000
```
Zeigt der Befehl einen Prozess an, ist der Port belegt und das Skript nimmt automatisch den nächsten freien.

Damit startet ein Server (kleines Programm zur Bereitstellung der Dateien) und öffnet die Seite automatisch im Browser.

Beim Laden erscheint ein kurzes Willkommensfenster. Es schließt sich nach 20 Sekunden automatisch oder per Klick auf "Los geht's". Neu: Oben rechts gibt es ein kleines "X". Ein Druck auf **Esc** oder ein Klick auf dieses X blendet das Fenster ebenfalls aus.
1. Wechsel im Terminal in den Projektordner.
2. Starte einen kleinen Webserver mit `python3 -m http.server`. (Damit werden die Dateien lokal bereitgestellt.)
3. Öffne dann `http://localhost:8000/index-MODULTOOL.html` im Browser (Programm zum Surfen im Internet).
4. Mit `Strg+C` beendest du den Server wieder.

### Wenn der Start hakt
1. Rufe `bash tools/start_tool.sh` erneut auf.
2. Das Skript erkennt fehlende Programme wie `python3` und versucht sie bei Bedarf zu installieren (`sudo apt-get install python3`).
3. Fehlen Node-Pakete, lädt das Skript sie automatisch mit `npm install` nach.
4. Bei Problemen hilft ein Blick in `/tmp/modultool_server.log` (Textdatei mit Fehlermeldungen).
5. Oder starte den Selfcheck:
   ```bash
   bash tools/selfcheck.sh
   ```
   *(Der Selfcheck prüft HTML, JSON und Shell-Skripte auf Fehler.)*

## Tooltips & Eingabehilfen

- Viele Felder zeigen nun Beispieltexte *(Placeholder = Platzhalter)*.
- Halte die Maus über ein Eingabefeld, um einen **Tooltip** (kurzer Hinweis) zu sehen.
- Beispiel: Im Modul *Persona-Switcher* weist das Namensfeld mit "Name des Profils" auf den Zweck hin.
- Diese Tipps helfen, schneller zu verstehen, was eingetragen werden soll.
- Für das Startskript kannst du `bash tools/start_tool.sh -h` eingeben. Das
  zeigt eine kurze Erklärung der Optionen *(Option = zusätzliche Einstellung)*.

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
Im Ordner `panels` liegt bereits `panel7.html`. Dieses Modul zeigt eine kleine Schnellhilfe mit weiteren Befehlen.
Neu hinzugekommen ist `panel8.html` für einen Zufall mit Gewichtung, `panel9.html` als Befehlsübersicht, `panel10.html` als einfacher Einstieg und `panel11.html` mit häufigen Fragen.
Rechts findest du nun auch einen Hilfebutton, der `LAIENHILFE.md` direkt im Browser öffnet.

## Weitere nützliche Befehle

- `git pull` – holt neue Änderungen aus dem Online-Archiv (**Repository**) auf deinen Rechner.
- `git log` – zeigt die letzten gespeicherten Versionen (**Commits**).
- `npm install -g htmlhint` – installiert das Programm **htmlhint** (prüft HTML).
- `python3 -m http.server 9000` – startet einen Server auf Port 9000 (*Port = Anschlussnummer*).
- `node tools/create_module.js modulID "Titel"` – legt ein neues Modul anhand der Vorlage an.
- `git diff` – zeigt deine aktuellen Änderungen (**Diff** = Unterschiede zum letzten Stand).
- `sudo apt-get install xclip` – installiert `xclip` (Hilfsprogramm für die Zwischenablage).
- `grep -n SUCHBEGRIFF -r` – durchsucht alle Dateien nach einem Wort (praktisch bei vielen Dateien).
- `git stash` – legt deine aktuellen Änderungen kurz ab (*Stash = Zwischenablage in Git*).
- `cp -r ordner ordner_backup` – macht eine komplette Kopie eines Ordners (*Backup = Sicherungskopie*).
- `less datei.txt` – zeigt Text seitenweise an (*Pager = Blättern im Terminal*).
- `history | tail` – listet die letzten Befehle auf (*History = Verlauf*).
- `git branch -a` – listet alle Zweige auf (*Branch = Entwicklungszweig*).
- `git checkout -b neuer_zweig` – erstellt und wechselt in einen neuen Branch (*checkout = zu einem Zweig wechseln*).
- `git merge anderer_zweig` – führt einen Branch in den aktuellen zusammen (*Merge = Zusammenführen*).
- `curl -O URL` – lädt eine Datei aus dem Internet herunter (*curl = Download-Programm*).
- `npm install` – lädt alle benötigten Pakete (*npm = Paketverwaltung*).
- `git remote -v` – zeigt gespeicherte Online-Adressen an (*Remote = entfernte Quelle*).
- `git reset --hard HEAD~1` – macht den letzten Stand rückgängig (*Reset = zurücksetzen*).
- `tar -czf backup.tar.gz ordner/` – erstellt ein gepacktes Archiv eines Ordners (*Backup = Sicherung*).
- `git tag -a v1.0 -m "Version 1.0"` – setzt eine Versionsmarke (*Tag = Markierung*).
- `rsync -av quelle/ ziel/` – kopiert Dateien schnell (*rsync = Synchronisationsprogramm*).
- `git cherry-pick COMMIT` – holt gezielt eine Änderung (*Cherry-Pick = einzelne Auswahl*).
- `tail -f datei.log` – zeigt fortlaufend neue Zeilen an (*tail = Ende der Datei*).
- `chmod +x script.sh` – macht eine Datei ausführbar (*chmod = Rechte ändern*).
- `git config --global user.name "Dein Name"` – hinterlegt deinen Namen in Git (*config = Einstellung*).
- `git config --global user.email "mail@example.com"` – speichert deine Mail-Adresse (*global = für alle Projekte*).
- `find . -name "*.html"` – sucht nach HTML-Dateien im Ordner (*find = Dateien finden*).
- `sudo apt-get install shellcheck` – installiert **shellcheck** (prüft Shellskripte).
- `git rebase -i HEAD~3` – ändert die letzten drei Commits (*rebase = Basis neu schreiben*).
- `ln -s quelle ziel` – erstellt einen symbolischen Link (*Link = Verweis auf Datei*).
- `du -sh ordner/` – zeigt die Größe eines Ordners (*du = Speicherplatz anzeigen*).
- `git clone URL` – kopiert ein komplettes Online-Archiv auf deinen Rechner (*clone = kopieren*).
- `mkdir neuer_ordner` – erstellt einen neuen Ordner (*mkdir = Verzeichnis anlegen*).
- `pwd` – zeigt, in welchem Ordner du dich befindest (*print working directory*).
- `cat datei.txt` – zeigt den Inhalt einer Datei an (*cat = Datei anzeigen*).
- `rm datei.txt` – löscht eine Datei unwiderruflich (*rm = remove*).
## Projektstruktur anzeigen

1. `cat baumstruktur.txt` (zeigt alle Dateien und Ordner) ausführen.
2. `ls` (Inhaltsauflistung) nutzen, um aktuelle Verzeichnisse zu sehen.
3. Bei Fragen `bash tools/selfcheck.sh` starten, das kontrolliert alles automatisch.

## Weitere Tipps

- Wenn du neue Module oder Panels testen m\u00f6chtest, erstelle einfach eine leere Datei in den Ordnern `modules/` oder `panels/`. Nutze daf\u00fcr:

```bash
touch modules/mein_modul.js
```

Das Kommando `touch` legt eine Datei an, ohne Inhalt. So kannst du sp\u00e4ter Code hinzuf\u00fcgen.

- Um die Beispielkonfiguration `modules.json` anzupassen, \u00f6ffne sie mit `nano`:

```bash
nano modules.json
```

Hier kannst du Module eintragen. `JSON` (JavaScript Object Notation) ist ein einfaches Textformat f\u00fcr Einstellungen.

- Schaue regelm\u00e4\u00dfig ins Verzeichnis `logs/`:

```bash
ls logs
```

Dort findest du zuk\u00fcnftig Protokolle (Logs), die dir Hinweise auf Fehler geben k\u00f6nnen.

## Logs dauerhaft speichern

- **Logdaten einsehen (localStorage = Browser-Speicher)**
  ```js
  JSON.parse(localStorage.getItem('logArchiv_vGRIDSB') || '[]')
  ```
  *(Zeigt eine Liste aller gespeicherten Einträge.)*

- **Alle Logdaten löschen**
  ```js
  localStorage.removeItem('logArchiv_vGRIDSB')
  ```
  *(Leert den gespeicherten Verlauf.)*

- **Log manuell speichern**
  ```js
  localStorage.setItem('logArchiv_vGRIDSB', JSON.stringify([{time:'12:00', msg:'Beispiel'}]))
  ```
  *(Schreibt eigenen Inhalt in den Logspeicher.)*


## Hilfreiche Zusatzbefehle

- **Neuen Ordner anlegen**
  ```bash
  mkdir neuer_ordner
  ```
  Damit erstellst du ein leeres Verzeichnis. `mkdir` bedeutet "make directory" (Ordner anlegen).

- **Dateiinhalt anzeigen**
  ```bash
  cat datei.txt
  ```
  Das Kommando `cat` (concatenate) zeigt den Inhalt einer Textdatei an.

- **Datei loeschen**
  ```bash
  rm alte_datei.txt
  ```

## Platzhalter verstehen

- **Beispieldatei oeffnen**
  ```bash
  nano logs/.placeholder
  ```
  Mit `nano` (Texteditor) siehst du den Inhalt und kannst Notizen ergaenzen.

- **Leere Datei anlegen**
  ```bash
  touch panels/neues_panel.js
  ```
  Das Kommando `touch` erzeugt eine Datei ohne Inhalt. So bleibt der Ordner in Git erhalten.

## Eigenes Modul erstellen

1. Wechsele in den Ordner `modules/`:
   ```bash
   cd modules
   ```
2. Oeffne die Datei `beispiel_modul.js` mit dem Editor:
   ```bash
   nano beispiel_modul.js
   ```
   `nano` (Texteditor) erlaubt dir, den Beispielcode anzupassen.
3. Speichere die Aenderungen mit `Strg+O` und beende mit `Strg+X`.
4. Trage dein Modul in `modules.json` ein:
   ```bash
   nano ../modules.json
   ```
   `JSON` (Datenformat fuer Einstellungen) enthaelt eine Liste aktiver Module.
5. Ein Selbstcheck prueft alles:
   ```bash
   bash ../tools/selfcheck.sh
   ```


## Modul im Browser ausprobieren

1. Wechsle in das Hauptverzeichnis zurück:
   ```bash
   cd ..
   ```
2. Erstelle eine Testdatei, die das Beispielmodul lädt:
   ```bash
   echo "<script type='module' src='modules/beispiel_modul.js'></script>" > test.html
   ```
   Das Kommando `echo` (Text ausgeben) schreibt eine Zeile in `test.html`.
3. Öffne `test.html` im Browser, z. B. mit einem Doppelklick im Dateimanager.
   Nach Eingabe des Namens siehst du die Begrüßung als Text auf der Seite.

## Code aufräumen

1. **Skripte formatieren (Prettier = automatischer Formatierer)**
   ```bash
   npx prettier --write .
   ```
   *(Ordnet Einrückungen und Leerzeichen.)*

2. **JavaScript prüfen (ESLint = Fehler- und Stilprüfung)**
   ```bash
   npx eslint .
   ```
   *(Findet Tippfehler und falsche Muster.)*

3. **HTML säubern (DOMPurify = Sanitizer)**
   ```bash
   npm install dompurify
   ```
   *(Entfernt gefährliche Inhalte bei Importen.)*

4. **Eingebundene Module säubern (sanitize = reinigen)**
   ```html
   <script defer src="https://cdn.jsdelivr.net/npm/dompurify@3.0.3/dist/purify.min.js"></script>
   ```
   *(Bindet DOMPurify ein. Die Funktion `sanitize()` filtert kritische Tags.)*

   ```js
   const sauber = DOMPurify.sanitize(importText);
   element.innerHTML = sauber;
   ```
   *(So landet nur geprüfter Inhalt im Modul.)*

Diese Befehle halten deine Module sauber und sicher.
## Geplante Erweiterungen

- Favoriten im Modul-Menü wählbar
- automatisches Backup alle 5 Minuten
- Undo/Redo-Knöpfe im Genre-Panel zum Rückgängig machen
- automatische Modul-Prüfung vor der Aktivierung
- besserer Farbkontrast nach WCAG (Barrierefreiheits-Regeln)
- Fokusmodus: ein Modul fullscreen, andere minimiert
- Tooltip-Akademie mit kurzen Erklärungen
- Querverlinkung zwischen Panels
- direkter Export (TXT, PDF, JSON)
- ZIP-Import mit Verteilen auf Module
- Schreibschutz-Button pro Panel
- Auto-Korrektur-Vorschläge bei Fehlern
- Entrümplungsmodus zum Aufräumen
- Kopieren per Doppelklick
- globaler Suchfilter

## Texte per Doppelklick kopieren
1. Starte einen kleinen Server:
```bash
python3 -m http.server
```
2. Rufe im Browser `http://localhost:8000/modules/doubleclick_copy.html` auf.
3. Doppelklicke auf den Text. "Kopiert!" erscheint kurz.
*Clipboard = Zwischenablage für kopierte Texte.*

- Todo-Listen-Modul
- Songtext-Editor mit Titelfeld, Notizen und Text
- Dialog-Schreiber für eigene Charaktere
- Info-Manager zum Sammeln von Befehlen
- Zitaten-Modul mit Autor- und Zitatfeld
- Interaktiver Modulbaukasten
### Modulbaukasten nutzen
1. Starte einen lokalen Server, zum Beispiel:
```bash
python3 -m http.server
```
2. Rufe `http://localhost:8000/modules/module_builder.html` im Browser auf.
3. Gib eine **Modul-ID** und einen **Titel** ein.
4. Klicke auf **HTML anzeigen**. Kopiere den Code in eine neue Datei im Ordner `modules`.

## Mit der Tastatur arbeiten

1. Du kannst alle Module auch ohne Maus bedienen.
2. Drücke die **Tabulator-Taste**. Damit springt der Fokus (Markierung) zum nächsten Bedienelement.
3. Die Buttons zeigen nun einen gut sichtbaren Rahmen (Fokus-Ring). Mit **Enter** löst du den gewählten Button aus.
4. So navigierst du komfortabel nur mit der Tastatur.

## Genre-Liste & Zufall testen

1. Öffne den Ordner `modules` im Dateimanager.
2. Doppelklicke auf `panel01.html`. Dein Browser zeigt das Modul an.
3. Gib mehrere Genres ein, getrennt durch Kommas.
4. Klicke auf **Speichern**. Die Liste wird in `localStorage` (Browser-Zwischenspeicher) gesichert.
5. Mit **Zufall** wählst du einen Eintrag zufällig aus. Darunter entsteht ein kleines Protokoll (Log) mit Uhrzeit.
6. Über **Kopieren** landet das Ergebnis in der Zwischenablage. Der Button färbt sich kurz grün als Bestätigung.

## Fehlerbehebung

Manchmal klappt das Speichern oder Kopieren nicht. Dann hilft Folgendes:

1. Prüfe im Browser die Einstellungen für "Website-Daten" (LocalStorage) und erlaube sie, falls sie blockiert sind.
2. Bei Problemen mit der Zwischenablage (Clipboard) im Browser auf "Zulassen" klicken.
3. Starte im Terminal den Selbstcheck, um gängige Fehler zu finden:

```bash
bash tools/selfcheck.sh
```

Falls "shellcheck" oder "htmlhint" fehlen, kannst du sie so installieren:

```bash
sudo apt-get install -y shellcheck npm
sudo npm install -g htmlhint
```

## Fehler & Hilfe-Panel nutzen

1. Öffne `modules/panel14.html` im Browser.
2. Das Panel liest die Datei `error_informationen.txt` und zeigt sie im Textfeld an.
3. Aktualisiere die Datei bei Bedarf mit:
   ```bash
   nano error_informationen.txt
   ```
   *("nano" ist ein einfacher Texteditor im Terminal.)*
4. Seite neu laden (**F5**), um die Änderungen zu sehen.
5. Trage deine Hinweise in `error_informationen.txt` ein, zum Beispiel:
   ```
   Modul nicht gefunden -> modules.json pruefen
   Selfcheck starten -> bash tools/selfcheck.sh
   ```
   *(Die Datei sammelt einfache Fehlernotizen.)*

## Textbaustein-Modul benutzen

1. Öffne `panel04.html` im Ordner `modules`.
2. Trage einen kurzen Titel und den Text in die Felder ein.
3. Klicke auf **Hinzufügen**. Die Liste sortiert sich automatisch alphabetisch.
4. Über **Kopieren** erscheint der Button kurz grün und der Eintrag landet im Dashboard.
5. Mit **Löschen** verschwindet der Eintrag aus der Liste und dem Speicher.
3. Klicke auf **Hinzufügen**. Der Eintrag erscheint darunter in der Liste.
4. Über **Kopieren** landet der Text in deiner Zwischenablage.
5. Mit **Bearbeiten** lädst du den Eintrag in die Felder, passt ihn an und klickst **Aktualisieren**.
6. Mit **Löschen** entfernst du einen Eintrag aus der Liste und dem Speicher.
## Flexibilität & Nutzerfreundlichkeit erhöhen

* **Konfigurationsdatei bearbeiten:** `nano .modultoolrc.json`
  `.json` (JavaScript Object Notation - Textformat für Einstellungen).
  Ändere zum Beispiel `"default_export_format": "txt"` für Text-Export.
  Danach `bash tools/selfcheck.sh` ausführen.

* **Farbschema wechseln:** `nano index-MODULTOOL.html` öffnen.
  Suche im `<body>`-Tag nach `data-theme`. Werte wie `dark`, `light` oder `blue` ändern das Aussehen.
  Speichern und Seite neu laden.

* **Eigenes Modul erstellen:**
  `cp modules/panel01.html modules/panel02.html` kopiert ein Beispiel.
  Bearbeite die Kopie mit `nano modules/panel02.html` und passe Titel und Funktionen an.
  Neue Module erscheinen im Browser, sobald die Datei geladen wird.

## Neue Funktionen im Genres-Modul

- Beim Speichern wird die Liste automatisch alphabetisch sortiert. So findest du Einträge schneller wieder.
- Der **Speichern**-Knopf leuchtet kurz grün auf. Das ist ein optisches Feedback (Rückmeldung), dass alles geklappt hat.
## Genre-Profile verwenden

1. Starte das Tool mit:
   ```bash
   bash tools/start_tool.sh
   ```
2. Im Panel **Genres + Zufall** gibst du deine Genres ein (Komma-getrennt).
3. Darunter steht das Feld **Profilname**. Trage dort z. B. `Hart`, `Schnell` oder `Chill` ein.
4. Klicke auf **Profil speichern**. Das Profil erscheint in der Auswahl.
5. Wähle ein Profil aus, um es zu laden. Über **Profil löschen** entfernst du es wieder.
6. Die 🎲-Buttons ziehen zufällig Genres aus dem geladenen Profil.

*(Profil = Sammlung deiner Genre-Listen, im Browser gespeichert.)*

## Persona-Switcher nutzen

1. Öffne `panel05.html` im Ordner `modules`.
2. Trage einen Namen und eine kurze Beschreibung ein.
3. Klicke auf **Profil speichern**. Der Eintrag landet in der Auswahlliste.
4. Wähle ein Profil aus der Liste und passe die Beschreibung bei Bedarf an.
5. Mit **Kopieren** überträgst du die Beschreibung in die Zwischenablage.

## Story-Sampler nutzen

1. Öffne `panel06.html` im Ordner `modules`.
2. Schreibe untereinander kurze Ideen.
3. Mit **Speichern** sicherst du die Liste.
4. **Zufall** wählt eine Idee, **Kopieren** überträgt sie.

## Cover-Layout gestalten

1. Öffne `panel07.html` im Ordner `modules`.
2. Trage einen Titel ein.
3. Wähle eine Farbe im Farbfeld.
4. Klicke auf **Speichern**, die Vorschau zeigt dein Cover.
5. Über **Zurücksetzen** löscht du Titel und Farbe wieder.
6. Für eine schnelle Vorschau starte im Terminal (Befehlsfenster):
   ```bash
   python3 -m http.server
   ```
   Öffne dann im Browser (Programm zum Surfen) `http://localhost:8000/modules/panel07.html`.

## Theme-Switcher nutzen

1. Öffne `panel08.html` im Ordner `modules`.
2. Wähle im Feld **Farbmodus** eines der Themes aus.
3. Klicke auf **Übernehmen**. Das Aussehen passt sich an und wird gespeichert.
## Einstellungen anpassen

1. Öffne `panel09.html` im Ordner `modules`.
2. Wähle eine **Schriftart** und gib eine **Schriftgröße** ein (Zahl in Pixel).
3. Bestimme die **Button-Rundung** in der Auswahlliste.
4. Trage optional einen **Standardpfad** ein, z.B. `./data`.
5. Drücke **Speichern**, damit die Angaben im Browser bleiben.

## Wiki nutzen

1. Öffne `panel10.html` im Ordner `modules`.
2. Gib einen Titel und etwas Text ein.
3. Mit **Speichern** landet die Seite in der Liste.
4. Wähle einen Eintrag aus und klicke **Laden**, um ihn zu bearbeiten.

## Blog-Editor verwenden

1. Öffne `panel11.html` im Ordner `modules`.
2. Trage einen Titel und deinen Artikel ein.
3. **Speichern** legt den Beitrag ab, **Laden** holt ihn aus der Liste.

## Tool automatisch aktualisieren

1. Öffne das Terminal.
2. Starte das Skript:
   ```bash
   bash tools/autoupdate.sh
   ```
   Es versucht, neue Versionen aus dem Git-Repository zu holen und schreibt alles in `logs/update.log`.
3. Mit `cat logs/update.log` kannst du prüfen, ob alles geklappt hat.
4. Falls Probleme auftreten, fuehre `git pull` manuell aus.
4. Drücke **Speichern**, damit die Angaben im Browser bleiben.
## Weiterf\u00fchrende Tipps

- **Browser-Speicher leeren (localStorage)**
  1. Modul im Browser öffnen.
  2. Taste F12 drücken und "Konsole" auswählen.
  3. `localStorage.clear()` eintippen und Enter drücken. (Löscht den Browser-Zwischenspeicher.)
- **Archiv zurücksetzen**
  1. Öffne die Genre-Liste im Tool.
  2. Klicke auf den Button `🗑️ Löschen`.
  3. Bestätige die Rückfrage mit **OK**. Nur das Archiv im Browser wird gelöscht (localStorage).

- **Projekt erneut prüfen**
  1. `git status` ausführen.
  2. `bash tools/selfcheck.sh` starten.
  3. Fehlermeldungen beachten und fehlende Werkzeuge nachinstallieren, z. B.:
     - `npm install -g htmlhint` (HTML-Prüfer)
     - `pip install yamllint` (YAML-Prüfer)

## Fortschritte auf GitHub hochladen

1. Prüfe, ob ein sogenanntes *Remote* (Verknüpfung zum Online-Repository) vorhanden ist:
   ```bash
   git remote -v
   ```
   Siehst du nichts, musst du die Verbindung anlegen.
2. Verbinde dein Projekt mit GitHub. Ersetze `DEINNAME` durch deinen Benutzernamen:
   ```bash
   git remote add origin https://github.com/DEINNAME/modultool.git
   ```
3. Lade deine gespeicherten Änderungen hoch:
   ```bash
   git push -u origin main
   ```
   Das `-u` merkt sich das Ziel für zukünftige `git push`-Befehle.
4. Holt vorher `git pull`, falls andere schon verändert haben. Dadurch werden die Daten zusammengeführt.

## Offene Punkte bis zum Release

*Projektordner lassen sich nun mit `bash tools/manage_projects.sh` auswählen*

## Fehlende Module

Keine

## Weitere Laien-Tipps

1. Neues Modul anlegen:
   ```bash
   node tools/create_module.js panel10 "Mein Modul"
   ```
   (Das Skript kopiert die Vorlage und ergänzt `modules.json` automatisch, falls es gültig ist.)
2. Selfcheck starten:
   ```bash
   bash tools/selfcheck.sh
   ```
3. Aufgabenliste aktualisieren:
   ```bash
   nano todo.txt
   ```
   Änderungen speichern (**Strg+O**) und schließen (**Strg+X**). Danach:
   ```bash
  # Platzhalter manuell aktualisieren
 cp todo.txt platzhalter.txt
  ```
Dadurch bleibt `platzhalter.txt` aktuell.
4. Scrollsync nutzen:
   Klicke rechts auf **Scrollsync: an/aus**. Damit
   rollen alle Panels gleichzeitig.

## Kalender-Module nutzen

1. `panel11.html` im Ordner `modules` öffnen.
2. Ein Datum wählen und eine kurze Beschreibung eintragen.
3. Mit **Speichern** landet der Termin im sogenannten *localStorage* (Browserspeicher).
4. Unter dem Formular siehst du alle Einträge des gewählten Monats.
5. `panel10.html` zeigt eine Jahresübersicht mit allen Monaten und ihren Terminen.
6. Im Dashboard werden automatisch die nächsten fünf Termine angezeigt.

## Module über das Dashboard öffnen

1. Starte `modules/panel03.html` im Browser.
2. Oben findest du ein Auswahlfeld (Dropdown) mit allen Modulen.
3. Modul wählen und auf **Öffnen** klicken. Das Modul erscheint in einem neuen Tab (Registerkarte).

## Warnung bei ungespeicherten Änderungen

1. Öffne `modules/unsaved_changes_warning.html` im Browser.
2. Schreibe etwas in das Textfeld.
3. Wenn du die Seite verlässt, erscheint eine Nachfrage. So gehen keine Eingaben verloren.

## Prüf-Funktionen nutzen

*In `validation.js` stecken allgemeine Validierungsfunktionen (Prüfroutinen).*
1. Beispiel: Datum testen
 ```bash
  node -e "import('./validation.js').then(m=>console.log(m.isValidDate('2025-01-01')))">
  ```
  Ergebnis **true** bedeutet gültig, sonst **false**.
2. Die Kalender-Module benutzen diese Funktionen automatisch beim Speichern.
3. Prüfen, ob der Browser Speicher erlaubt:
   ```bash
   node -e "import('./validation.js').then(m=>console.log(m.hasLocalStorage()))"
   ```
   **true** zeigt, dass der sogenannte *localStorage* (Browserspeicher) funktioniert.
4. Text auf gültiges JSON testen:
   ```bash
   node -e "import('./validation.js').then(m=>console.log(m.isValidJSON('{\"a\":1}')))">
   ```
   **true** bedeutet korrektes JSON (Datenformat).

## Noch mehr nützliche Befehle

- **Lokalen Server starten (kleiner Test-Server)**
  ```bash
  python3 -m http.server
  ```
  Danach kannst du `http://localhost:8000` im Browser aufrufen.

- **Commit-Historie anzeigen (Verlauf der Änderungen)**
  ```bash
  git log --oneline --graph
  ```
  So siehst du, wann welche Änderung gespeichert wurde.

- **Unterschiede prüfen**
  ```bash
  git diff
  ```
  Dieser Befehl zeigt dir Zeile für Zeile an, was sich im Vergleich zum letzten Commit geändert hat.

## Module-Übersicht aktualisieren

Mit diesem Skript erhältst du eine dauerhafte Liste aller eingebundenen Module. Neue Einträge werden angehängt, vorhandene bleiben bestehen.

1. Liste erzeugen:
   ```bash
   jq -r '.[] | "\(.id): \(.title)"' modules.json > module_übersicht.txt
   ```
   Danach enthält `module_übersicht.txt` alle Module.
## Datensicherheit verbessern

1. Regelmäßig eine Sicherung (*Backup*) erstellen:
   ```bash
   zip -r sicherung_$(date +%Y%m%d).zip .
   ```
   Dadurch packst du den gesamten Ordner in eine ZIP-Datei. Diese Datei kannst du extern aufbewahren.
2. Vermeide, dass vertrauliche Daten (z. B. Passwörter) im Repository landen. Kontrolle mit `git status`.

## Branches zusammenführen

1. Stelle sicher, dass du auf dem Hauptzweig (**main**) bist:
```bash
git checkout main
```
2. Ziehe die neuesten Änderungen, damit alles aktuell ist:
```bash
git pull
```
3. Füge den Arbeitszweig (**work**) zusammen (*merge* bedeutet vereinen):
```bash
git merge work
```
4. Treten Konflikte auf, folge den Hinweisen im Terminal und korrigiere sie.
5. Übertrage das Ergebnis wieder nach GitHub:
```bash
git push
```
Damit sind die Zweige vereint und online gesichert.

## Weiterfuehrende Laienvorschlaege

- **Neue Version holen (update)**
  ```bash
  git fetch        # Server-Infos abrufen
  git pull         # Änderungen laden und einbinden
  bash tools/selfcheck.sh
  ```

- **Eigenes Modul veröffentlichen**
  ```bash
  git checkout -b mein_zweig      # neuer Arbeitszweig
  git add DATEI
  git commit -m "Beschreibung"
  git push -u origin mein_zweig
  ```
  Danach auf GitHub einen *Pull Request* (Zusammenführungsanfrage) erstellen.

- **Zwischenergebnisse sichern (stash)**
  ```bash
  git stash        # aktuelle Änderungen zwischenspeichern
  git stash pop    # später wiederherstellen

- **Eigenen Port nutzen (Port)**
  ```bash
  python3 -m http.server 9000
  ```
  (Startet den Server auf Port 9000. Danach im Browser `http://localhost:9000/index-MODULTOOL.html` öffnen.)

- **Logdatei anzeigen (Log)**
  ```bash
  tail -f /tmp/modultool_server.log
  ```
  (Zeigt laufend neue Meldungen aus der Server-Logdatei an.)

## Pakete erstellen

Mit dem Skript `tools/build_packages.sh` kannst du ein Debian-Paket (.deb) und ein AppImage erzeugen. So geht's:

1. Öffne das Terminal.
2. Tippe:
   ```bash
   bash tools/build_packages.sh
   ```
3. Falls `dpkg-deb` oder `appimagetool` fehlen, meldet das Skript eine Warnung. Installiere sie bei Bedarf mit `sudo apt-get install dpkg-dev` bzw. lade `appimagetool` herunter.

## Übersicht der Dateien pflegen

Die Datei `all_in_uebersicht.txt` listet alle Projektdateien. Aktualisiere sie so:

```bash
find . -type f ! -path "./.git/*" | sort > all_in_uebersicht.txt
```

Damit aktualisierst du die Liste manuell. Nicht gefundene Dateien kannst du selbst in `error_informationen.txt` notieren.

## Datum und Uhrzeit im Dashboard

Im Dashboard (Panel03) steht jetzt oben die aktuelle Uhrzeit und das Datum. Die Anzeige
aktualisiert sich jede Sekunde von selbst.

- Uhrzeit im Terminal anzeigen:
  ```bash
  date
  ```
(Zeigt Datum und Zeit an)

### Verlauf exportieren

Im Dashboard kannst du den Verlauf jetzt als Textdatei speichern.
So geht es:

```bash
1. Panel03 im Browser öffnen
2. Auf **Exportieren** klicken
```
Die Datei `dashboard_log.txt` erscheint im Download-Ordner.

## Weiterf\u00fchrende Laienvorschl\u00e4ge

Hier siehst du in einfacher Sprache, wie du die Schritte aus dem GitHub-Outline durchf\u00fchrst. Fachbegriffe stehen in Klammern und werden kurz erkl\u00e4rt.

### 1. Repository einrichten und Branch anlegen
```bash
git remote -v
git remote add origin URL   # Remote (Online-Adresse) setzen
git checkout -b refactoring # neuen Branch (Entwicklungszweig) erstellen
```

### 2. Ordner umbenennen
```bash
git mv modules plugins
git mv panels ui/panels
```
Damit hei\u00dfen die Ordner jetzt `plugins/` und `ui/panels/`.

### 3. plugin.json anlegen
```bash
mkdir -p plugins/mein_plugin
nano plugins/mein_plugin/plugin.json
```
In dieser Datei tr\u00e4gst du Name und Version ein. `JSON` ist ein einfaches Textformat.

Seit Version 1.0 legt das Skript `create_module.js` diese Datei automatisch an:
```bash
node tools/create_module.js modulID "Mein Modul"
```
Danach liegt `plugins/modulID/plugin.json` mit allen Angaben (ID, Name, Version) bereit.

### 4. Gemeinsame Bibliothek nutzen
Lege den Ordner `lib/` an und erstelle dort eine Datei f\u00fcr die Update-Logik:
```bash
mkdir -p lib
nano lib/update.js
```

### 5. Konfigurationsdatei
```bash
nano config.json
```
Hier speicherst du zentrale Einstellungen, die das Tool beim Start pr\u00fcft.

### 6. Konfigurationsschema erstellen
```bash
nano config_schema.json
```
In dieser Datei beschreibst du, welche Einstellungen erlaubt sind.
*(Schema = Vorlage f\u00fcr eine Datenstruktur in JSON).*
### 7. Tests und CI
```bash
bash tools/selfcheck.sh
```
Der Selfcheck ruft HTML-, JSON- und Shell-Pr\u00fcfungen auf.
### 7.1 Unit-Tests ausführen
Für eigene Tests wird das Paket *Mocha* (Test-Framework) genutzt.
```bash
npm test
```
*(Startet alle Dateien im Ordner `test/` mit der Endung `.test.js`.)*

### 8. \u00c4nderungen hochladen
```bash
git add .
git commit -m "Refactoring vorbereitet"
git push -u origin refactoring
```
Danach kannst du auf GitHub einen *Pull Request* (Zusammenf\u00fchrungsanfrage) stellen.

## Aufräumen und Doctype ergänzen

Mit der Zeit sammeln sich leere Dateien oder doppelte Einträge an. So bringst du Ordnung rein:

1. Fehlende `<!DOCTYPE>`-Angabe finden:
   ```bash
   grep -L '<!DOCTYPE html>' modules/*.html panels/*.html
   ```
   Diese Liste zeigt Dateien, die keinen Doctype besitzen.
2. Doctype automatisch einfügen:
   ```bash
   grep -L '<!DOCTYPE html>' modules/*.html panels/*.html | xargs -I {} sed -i '1i <!DOCTYPE html>' {}
   ```
   `sed` (Stream-Editor) schreibt die Zeile ganz oben in jede gefundene Datei.
3. Doppelte `id`-Attribute suchen:
   ```bash
   grep -n "id=\"" -r modules | sort
   ```
   Ändere mehrfache IDs ab, damit sie einzigartig bleiben.
4. Unnötige Platzhalter entfernen:
   ```bash
   rm modules/asset_finder.html
   ```
   `rm` (remove) löscht Dateien endgültig.
5. Struktur aktualisieren:
   ```bash
   find . -type f | sort > baumstruktur.txt
   ```
   So hältst du `baumstruktur.txt` auf dem neuesten Stand.
## Weiterführende Laienvorschläge (neu)

- **Tool im Browser neu laden**
  ```bash
  F5
  ```
  *(Aktualisiert die Ansicht. Falls etwas hakt, hilft oft ein Neuladen.)*

- **Eigenes Farbschema einstellen (Theme)**
  ```bash
  echo '{"theme":"dark"}' > data/theme.json
  ```
  *(Legt eine kleine Einstellungsdatei an. Das Tool liest sie beim Start ein.)*

- **Alle Daten sichern (Backup)**
  ```bash
  zip -r backup.zip .
  ```
  *(Erstellt ein ZIP-Archiv mit allen Dateien im aktuellen Ordner.)*

- **Module filtern und als Favorit markieren**
  ```bash
  # Text ins Suchfeld "Module filtern" tippen
  # Stern anklicken, um Modul oben zu merken
  ```
  *(Das Suchfeld grenzt die Modul-Liste ein. Der Stern speichert Lieblingsmodule.)*

- **Alte Platzhalter-Module entfernen**
  ```bash
  git rm modules/panel1.html modules/panel2.html
  git rm modules/panel3.html modules/panel4.html
  ```
  *(Löscht nicht mehr benötigte Platzhalter. Danach `git commit` ausführen.)*

- **IDs in der Modul-Liste korrigieren**
  ```bash
  nano modules.json
  ```
*(IDs ohne führende Null eintragen, z.B. `"panel1"` statt `"panel01"`.)*
- **Konfigurationsschema prüfen**
  ```bash
  jq config_schema.json
  ```
  *("jq" ist ein Programm zum Anzeigen und Prüfen von JSON-Dateien.)*

## Noch mehr Laien-Tipps (neu)

- **Tooltips nutzen**
  Halte die Maus über eine Schaltfläche oder ein Eingabefeld. Ein kleiner Hinweis erscheint. *(Tooltip = kurzer erklärender Text).* So erkennst du schneller, was ein Knopf bewirkt.

- **Selfcheck automatisch starten**
  ```bash
  crontab -e
  ```
  Füge diese Zeile ein:
  ```bash
  0 7 * * 1 bash /pfad/zu/tools/selfcheck.sh
  ```
  *(Cron ist ein Zeitplaner unter Linux. Damit läuft der Selbstcheck jeden Montag um 7 Uhr.)*

- **todo.txt aktuell halten**
  ```bash
  cp todo.txt platzhalter.txt
  ```
  *(Kopiert die Aufgabenliste. So bleibt `platzhalter.txt` auf demselben Stand.)*
- **Textbausteine extern bearbeiten**
  ```bash
  nano modules/panel02.html
  ```
  *(Öffnet das Modul im Editor. "nano" ist ein einfacher Texteditor im Terminal.)*

- **Layout & Zoom steuern**
  ```bash
  F11             # Vollbildmodus
  Strg+Mausrad    # Zoom
  Strg+0          # Normalgröße
  ```
  *(Im Fokus-Modus füllt ein gewähltes Panel den ganzen Bildschirm.)*
  
- **Seitenleisten ein- und ausblenden**
  Links bleibt die Modul-Liste immer sichtbar. Rechts kannst du das Menü mit dem ⚙-Knopf umschalten. So bleibt der Platz optimal genutzt.


## Todo-Liste immer aktualisieren
Nach jeder Änderung solltest du die Aufgabenliste kurz öffnen und dann die Listen angleichen.
```bash
nano todo.txt    # Einträge anpassen
bash tools/sync_todo.sh
```
*(`sync_todo.sh` kopiert die Liste in die Dateien `data/todo.txt` und `platzhalter.txt`.)*

## Nutzerfreundlichkeit weiter verbessern

- **Kurzbefehl zum Start (Alias)**
  ```bash
  echo "alias modstart='bash tools/start_tool.sh'" >> ~/.bashrc
  source ~/.bashrc
  ```
  *(Alias = selbstgewählter Kurzname für einen Befehl. `source` liest die Datei neu ein.)*

- **Schriftgröße anpassen (CSS = Gestaltungssprache)**
  ```bash
  echo "body { font-size: 18px; }" > panels/style_override.css
  ```
  *(Erzeugt eine Datei, die im Browser die Schrift etwas größer darstellt.)*

- **Selfcheck ausführen**
  ```bash
  bash tools/selfcheck.sh
  ```
  *(Prüft HTML, JSON und Shell-Skripte. Meldet Fehler verständlich.)*

- **HTML-Datei prüfen**
  ```bash
  htmlhint modules/panel01.html
  ```
  *(`htmlhint` sucht typische Fehler in HTML-Dateien.)*

- **Module schnell durchsuchen (grep = Suchprogramm)**
  ```bash
  grep -n "<title>" modules/*.html
  ```
  *(Zeigt alle Titelzeilen in den Moduldateien mit Nummer an.)*

- **Hilfe im Terminal aufrufen (man = Handbuch)**
  ```bash
  man bash
  ```
  *(Zeigt das Handbuch zur Befehls-Shell. Mit `q` beendest du die Anzeige.)*

- Nach jeder Änderung die Datei `todo.txt` öffnen:
  ```bash
  nano todo.txt
  ```
  *("nano" ist ein einfacher Texteditor)*
- Neue Aufgaben eintragen oder erledigte abhaken.
- Speichern mit **Strg+O**, beenden mit **Strg+X**.
- Danach die Liste in `platzhalter.txt` kopieren:
  ```bash
  cp todo.txt platzhalter.txt
  ```
  *("cp" bedeutet Copy und erstellt eine Kopie)*
- Beide Dateien zur Versionskontrolle sichern:
  ```bash
  git add todo.txt platzhalter.txt
  git commit -m "Todo-Liste aktualisiert"
  ```
  *("git" speichert die Änderungen im Repository)*
- **Modul im Browser testen**
  ```bash
  python3 -m http.server
  ```
  *(Startet einen lokalen Server. Danach `http://localhost:8000/modules/panel02.html` im Browser öffnen.)*

- **Vorlagen in Datei speichern (Export)**
  ```bash
  node tools/comma_json.js save "Beispieltext" my_templates.json
  ```
  *(Speichert eine kommagetrennte Liste als JSON-Datei. `JSON` ist ein einfaches Textformat.)*


- **Profil im Persona-Switcher löschen**
  ```bash
  Profil auswählen und auf "Profil löschen" klicken
  ```
  *(Entfernt das Profil dauerhaft aus dem Browser-Speicher (localStorage).)*

## Weitere Tipps zur Ordnung
- **Selfcheck starten** (Prüft Dateien automatisch)
```bash
bash tools/selfcheck.sh
```
- **Dateiübersicht aktualisieren** (erstellt die Datei baumstruktur.txt)
```bash
find . -type f | sort > baumstruktur.txt
```
- **Backup erstellen** (kompletten Ordner packen)
```bash
zip -r modultool_backup.zip .
```
## Neu: Selbstcheck mit npm
Falls Node (Laufzeit für JavaScript) installiert ist, reicht ein kurzer Befehl:
```bash
npm run selfcheck
```
Damit rufst du `tools/selfcheck.sh` auf und prüfst das Projekt automatisch.
```
npm test
```
*(Führt die Unit-Tests aus.)*


## Gemeinsame CSS-Datei
Alle Module nutzen nun `modules/common.css`. Hier kannst du das Aussehen zentral anpassen.

## Weiterführende Laienvorschläge zur Release-Vorbereitung

- **Git-Stand aktualisieren (fetch/pull)**
  ```bash
  git fetch     # holt neue Infos vom Server
  git pull      # zieht Änderungen und mischt sie ein
  ```
  *("fetch" = herunterladen ohne einbinden, "pull" = herunterladen und einbinden.)*

- **Release-Tag setzen (Tag = Markierung eines Versionsstands)**
  ```bash
  git tag -a v1.0 -m "Release 1.0"
  git push --tags
  ```
  *(Erstellt eine Version 1.0 und lädt sie zu GitHub.)*

- **Pakete bauen (DEB und AppImage)**
  ```bash
  bash tools/build_packages.sh
  ```
  *(Erzeugt Installationspakete für Linux.)*

- **Cronjob für Selfcheck einrichten (Cron = Zeitplaner)**
  ```bash
  crontab -e
  0 7 * * 1 /pfad/zu/tools/weekly_selfcheck.sh
  ```
*(Startet den Selfcheck jeden Montag um 7 Uhr automatisch. Ergebnis steht in logs/weekly_selfcheck.log)*
## Kurze Release-Checkliste
Folgende Aufgaben sind noch offen:
- [x] Unit- und Integrationstests einrichten
- [x] GitHub Actions für Linting und Tests
- [x] ZIP-Backup-Modul fertigstellen
- [x] Undo/Redo-Funktion
- [x] Filter und Favoriten
- [x] Scrollsync zuschaltbar
- [x] Projektordner verwalten (Script `bash tools/manage_projects.sh`)
- [ ] Vor dem Release `bash tools/selfcheck.sh` ausführen
- [ ] Mit `git tag -a v1.0 -m "Release 1.0"` markieren und `git push --tags`
- [ ] Pakete bauen mit `bash tools/build_packages.sh`


## Weitere Tipps für Fortgeschrittene

- **CI/CD-Pipeline nutzen (CI/CD = automatische Abläufe bei jeder Änderung)**
  ```bash
  # Dateien zum Commit vormerken
  git add .github/workflows/ci.yml package.json tsconfig.json tools/create_module.ts
  git commit -m "CI-Pipeline und TypeScript eingerichtet"
  git push
  ```
  *(Der Ablauf prüft den Code (Lint), führt Tests aus, baut die Dateien und bereitet eine neue Version vor.)*

- **TypeScript installieren (TypeScript = strengerer JavaScript-Dialekt)**
  ```bash
  npm install --save-dev typescript
  npx tsc
  ```
  *(Erstellt aus .ts-Dateien fertige .js-Dateien im Ordner `dist`.)*

- **Barrierefreiheit prüfen (Accessibility = Zugänglichkeit)**
  ```bash
  npx axe http://localhost:8000/index-MODULTOOL.html > a11y-report.txt
  ```
  *(Erzeugt einen Bericht über mögliche Zugänglichkeits-Probleme.)*

- **Panels eindeutig zuordnen (aria-labelledby = Verknüpfung von Überschrift)**
  Stelle sicher, dass jedes Panel mit `role="region"` ein passendes `aria-labelledby` besitzt:
  ```html
  <section role="region" aria-labelledby="panel7-head">
    <h2 id="panel7-head">Notizen</h2>
    ...
  </section>
  ```
  *(Hilft Bildschirmlesern, den Bereich richtig zu benennen.)*

- **Version erhöhen und Changelog (Änderungsliste) erstellen**
  ```bash
  npm version patch
  git log -1 --pretty=format:"- %s" >> CHANGELOG.md
  git add CHANGELOG.md package.json
  git commit -m "Neue Version und Changelog"
  ```
  *(Erhöht die Versionsnummer und ergänzt die Datei `CHANGELOG.md`.)*

## Neue Laien-Tipps

- **Lokalen Server starten (http-server = kleiner Webserver)**
  ```bash
  npx http-server
  ```
  *(Zeigt die Dateien im Browser unter `http://localhost:8080` an.)*

- **Pakete prüfen und aktualisieren (npm = Paketmanager)**
  ```bash
  npm outdated
  npm update
  ```
  *(`npm outdated` listet veraltete Pakete auf, `npm update` bringt sie auf den neuesten Stand.)*

- **CSS automatisch anpassen (Autoprefixer = ergänzt Browser-Vorsilben)**
  ```bash
  npx postcss modules/*.css --use autoprefixer -d modules
  ```
  *(Erzeugt neue CSS-Dateien mit zusätzlichen Präfixen für ältere Browser.)*

- **Seite mit Lighthouse prüfen (Lighthouse = Analysewerkzeug)**
  ```bash
  npx lighthouse http://localhost:8080/index-MODULTOOL.html
  ```
  *(Liefert Berichte zu Performance und Barrierefreiheit.)*

 - **Node-Version anzeigen (Node.js = JavaScript-Laufzeitumgebung)**
   ```bash
   bash tools/node_version.sh
   ```
   *(Führt `node --version` aus und zeigt die installierte Version.)*

- **Sicherheitsprüfung der Pakete (npm audit fix = bekannte Lücken schließen)**
  ```bash
  npm audit fix
  ```
  *(Aktualisiert automatisch fehlerhafte Abhängigkeiten.)*

- **CSS prüfen (Stylelint = Stilkontrolle)**
  ```bash
  npx stylelint "**/*.css"
  ```
  *(Findet Probleme im Aussehen der Stylesheets.)*

- **Bilder verkleinern (Imagemin = Bildkomprimierung)**
  ```bash
  npx imagemin src/img/* --out-dir=dist/img
  ```
  *(Erzeugt kleinere Dateien für schnellere Ladezeiten.)*

- **Version im Git markieren (Tag = Versionsmarkierung)**
  ```bash
  git tag -a v1.0 -m 'Version 1.0' && git push --tags
  ```
  *(Setzt eine feste Versionsnummer im Repository.)*

- **package.json anlegen (npm init = Projekt starten)**
  ```bash
  npm init -y
  ```
  *(Erstellt eine Grundeinstellung für dein Projekt. npm merkt sich dort alle Pakete.)*

- **Debounce-Funktion installieren (kurze Wartezeit einbauen)**
  ```bash
  npm install lodash.debounce
  ```
  *(`lodash.debounce` verzögert eine Funktion, bis kurz Ruhe ist. Praktisch für Suchfelder.)*

- **Suche wartet kurz bevor sie filtert (Debounce = Verzögerung)**
  ```js
  // Datei index-MODULTOOL.html
  let searchTimer;
  document.getElementById('searchInput').oninput = function() {
    const val = this.value;
    clearTimeout(searchTimer);
    searchTimer = setTimeout(() => {
      searchTerm = val;
      renderList();
    }, 200);
  };
  ```
  *(So wird die Liste erst nach 0,2 Sekunden aktualisiert. Tippfehler landen nicht sofort im Ergebnis.)*

- **Layout automatisch anpassen (CSS Grid = flexible Anordnung)**
  ```css
  /* Datei index-MODULTOOL.html */
  .grid-main {
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    grid-auto-rows: minmax(160px, auto);
  }
  ```
  *(Die Module sortieren sich selbst. Bei kleinen Fenstern rutschen sie einfach untereinander.)*

- **Versionsnummer im Browser speichern (localStorage = dauerhafter Speicher im Browser)**
  ```js
  localStorage.setItem('DATA_VERSION', '1');
  ```
  *(Merkt sich die Daten-Version "1". So kannst du später prüfen, ob gespeicherte Informationen erneuert werden müssen.)*

- **Gespeicherte Daten wieder löschen (deleteJSON = Eintrag entfernen)**
  ```js
  import { deleteJSON } from './modules/common.js';
  deleteJSON('exampleData');
  ```
  *(`deleteJSON` löscht den Schlüssel `exampleData` aus dem Browser-Speicher.)*

- **Letzte Änderung zurücknehmen (Undo = rückgängig)**
  Klicke im Genre-Panel auf **Undo**, um die vorherige Liste wiederherzustellen.
  Mit **Redo** holst du die Änderung zurück.

- **Modulliste einklappen (Dropdown = ausklappbares Menü)**
  Klicke links auf **"Module ein/aus"**. Die Liste mit Häkchen erscheint oder verschwindet.
  So bleibt in der Seitenleiste mehr Platz.

- **Fokusmodus direkt im Panel wechseln**
  Jedes Modul hat jetzt einen kleinen *Fokus*-Knopf. Ein Klick blendet nur dieses Panel ein.
  Im Fokus siehst du oben im Panel den Knopf **Zurück**, der wieder die normale Übersicht zeigt.


- **Dateien sicher laden (fetch = Dateien abrufen)**
  ```js
  async function loadRegisteredPanels(){
    const res = await fetch('modules.json');
    if(!res.ok){
      if(res.status === 404) throw new Error('Modulliste nicht gefunden (404)');
      throw new Error('HTTP ' + res.status);
    }
    const cfg = await res.json(); // prüft auf gültiges JSON
    cfg.modules.forEach(m => loadPanel(m.id));
  }
  ```
  *(Bricht mit einer klaren Meldung ab, wenn die Datei fehlt oder fehlerhaft ist.)*

- **modules.json reparieren**
  ```bash
  ls -l modules.json   # Prüfen, ob die Datei existiert
  nano modules.json    # Inhalt öffnen und Klammern prüfen
  ```
  *(Nach dem Speichern Seite neu laden, um die Module zu laden.)*
- **Automatisches Backup im Browser (setInterval = Zeitsteuerung)**
  ```js
  setInterval(() => {
    const data = { notes: localStorage.getItem('notes_vGRIDSB') };
    localStorage.setItem('autoBackupData', JSON.stringify(data));
  }, 300000);
  ```
  *(Speichert deine Notizen alle fünf Minuten in `localStorage`.)*

- **Logs begrenzt speichern (Ringpuffer = nur die letzten 50 Einträge)**
  ```js
  const arr = JSON.parse(localStorage.getItem('logs') || '[]');
  arr.push({time: Date.now(), msg: 'Aktion'});
  localStorage.setItem('logs', JSON.stringify(arr.slice(-50)));
  ```
  *(So bleibt der Verlauf klein und ältere Einträge werden automatisch entfernt.)*

- **Listen schneller zeichnen (DocumentFragment = Sammelbehälter im Speicher)**
  ```js
  const frag = document.createDocumentFragment();
  items.forEach(i => frag.appendChild(i));
  list.replaceChildren(frag);
  ```
  *(Erst alle Elemente sammeln, dann in einem Rutsch einfügen. Das spart Zeit.)*

- **Gemeinsames Zustandsobjekt nutzen (state = Sammelstelle für Daten)**
  ```js
  const state = {
    genres: [],
    dashboardData: [],
    tmplArchiv: []
  };
  // Zugriff: state.genres.push('Rock');
  ```
  *(Statt viele einzelne Variablen zu pflegen, liegt alles an einer Stelle. Das
  vermeidet doppelte Deklarationen.)*

- **Einstellungen zentral speichern (config.js = Sammelstelle fuer Optionen)**
  ```js
  // Datei config.js
  export const LIMITS = { importSize: 1_000_000 };
  export const THEMES = ['default', 'dark', 'blue'];
  ```
  *(Hier landen alle wichtigen Werte. Andere Dateien importieren diese Optionen.)*

- **Skripte auslagern (app.js = Hauptdatei)**
  1. Erstelle `app.js` und kopiere den JavaScript-Code aus `index-MODULTOOL.html` hinein.
  2. Binde es im HTML ein:
  ```html
  <script type="module" defer src="app.js"></script>
  ```
  *(So bleibt die HTML-Datei uebersichtlich und der Code laesst sich besser warten.)*

- **Installierbare Web-App (PWA = Progressive Web App)**
  ```bash
  npx workbox-cli wizard
  ```
  *(Erstellt eine `manifest.json` und einen Service Worker. Damit kann die Seite offline funktionieren.)*

- **Service Worker registrieren (Hintergrundhelfer)**
  ```js
  if ('serviceWorker' in navigator) {
    navigator.serviceWorker.register('sw.js');
  }
  ```
*(Dieses kleine Skript laedt `sw.js` und ermoeglicht Offline-Zugriff.)*

## Neue Tipps zur mobilen Ansicht

- **Seitenleisten einblenden**
  - Klicke auf den Menü-Button `☰` oder das Zahnrad `⚙`. Damit schiebst du die linke bzw. rechte Seitenleiste ein oder aus.
  - Auf kleinen Bildschirmen (unter 780 px Breite) erscheinen die Seitenleisten als Schublade.

- **Logbuch im Dashboard**
  - Im Panel "Dashboard" siehst du jetzt ein zweites Feld mit den letzten Systemmeldungen.
  - Jeder Eintrag zeigt Uhrzeit und Text. Bei Problemen kannst du hier nachschauen.

## Praktische Befehle (Kurzfassung)

```bash
git status        # zeigt geänderte Dateien ("Status")
git add datei     # fügt eine Datei zum nächsten "Commit" hinzu
git commit -m "Nachricht"  # sichert die Änderungen dauerhaft
npm outdated      # listet veraltete Pakete im Projekt
npm update        # aktualisiert diese Pakete automatisch
```

*(Die Befehle können einfach kopiert und im Terminal ausgeführt werden.)*

- **Todo-Dateien synchronisieren (sync_todo.sh = Kopierhilfe)**
  ```bash
  bash tools/sync_todo.sh
  ```
  *(Kopiert `todo.txt` zu `data/todo.txt` und `platzhalter.txt`. So bleiben alle Listen gleich.)*

- **Gewichte früh laden (DOMContentLoaded = HTML fertig geladen)**
  ```js
  document.addEventListener('DOMContentLoaded', loadWeights);
  ```
  *(Lädt die Gewichtungen sofort, bevor du die Zufallsfunktion nutzt.)*

## Weiterf\u00fchrende Laienvorschl\u00e4ge (Zusatz)

- **Letzten Commit anzeigen (log)**
  ```bash
  git log -1
  ```
  *(log = Liste der vorherigen Versionen im Repository.)*

- **Code-Stil automatisch pr\u00fcfen (lint)**
  ```bash
  npm run lint
  ```
  *(lint = Stilpr\u00fcfung, findet typische Fehler.)*

- **Lokalen Testserver starten (serve)**
  ```bash
  npx serve
  ```
  *(serve = kleines Programm, das Dateien im Browser bereitstellt.)*

- **todo.txt synchron halten**
  ```bash
  cp todo.txt platzhalter.txt
  cp todo.txt data/todo.txt
  ```
  *(So haben alle Kopien der Aufgabenliste den gleichen Stand.)*

## Weiterf\u00fchrende Tipps

- **Dateien aufr\u00e4umen (Whitespace entfernen)**
  ```bash
  find . -name '*.txt' -o -name '*.md' | xargs sed -i 's/[ \t]*$//'
  ```
  *(Whitespace = \u00fcberfl\u00fcssige Leerzeichen am Zeilenende. Der Befehl entfernt sie aus allen Text- und Markdown-Dateien.)*

- **Zeilenenden vereinheitlichen (newline = Zeilenumbruch)**
  ```bash
  for f in $(find . -name '*.txt' -o -name '*.md'); do tail -c1 "$f" | od -An -t x1 | grep -q '0a' || echo >> "$f"; done
  ```
  *(Sorgt daf\u00fcr, dass jede Datei mit einem Zeilenumbruch endet.)*

- **Aufgabenliste erweitern**
  ```bash
  echo '- [ ] Textdateien bereinigen (Whitespace, Newline)' >> todo.txt
  bash tools/sync_todo.sh
  ```
  *(Der erste Befehl erg\u00e4nzt einen neuen Punkt in deiner Aufgabenliste. Der zweite Befehl synchronisiert die anderen Listen.)*

## Modul-Versionen verwalten

- **Versionen angleichen (sync)**
  ```bash
  node lib/update_manager.js sync
  ```
  *(sync = Abgleich. Der Befehl legt f\u00fcr neue Module eine Version 1.0 in `module_versions.json` an.)*

- **Version erh\u00f6hen (bump)**
  ```bash
  node lib/update_manager.js bump panel12
  ```
  *(bump = erh\u00f6hen. Dadurch wird die Patch-Version des angegebenen Moduls um eins gesteigert.)*


- **Todo-Modul nutzen (localStorage = Browser-Speicher)**
  ```bash
  python3 -m http.server
  ```
  *(Startet einen kleinen Server. Rufe `http://localhost:8000/modules/todo_list.html` auf und verwalte deine Aufgaben.)*

## Zitate sammeln
1. Starte einen lokalen Server:
```bash
python3 -m http.server
```
*(stellt die Dateien im Browser bereit)*
2. Öffne `http://localhost:8000/modules/quote_manager.html`.
3. Trage Autor, Zitat und optional eine Notiz ein.
4. Mit **Hinzufügen** landet der Eintrag im localStorage (Browser-Speicher).
5. Über **Kopieren** steht der Text in der Zwischenablage (Clipboard). **Löschen** entfernt ihn wieder.

## Daten exportieren

Mit wenigen Klicks kannst du deine Listen sichern (Export = Daten als Datei speichern).

### Todo-Liste speichern
```bash
python3 -m http.server
```
*(Server starten)*
1. Rufe `http://localhost:8000/modules/todo_list.html` auf.
2. Drücke **Exportieren**. Der Browser lädt `todos.json` herunter.

### Zitate speichern
```bash
python3 -m http.server
```
*(Server starten)*
1. Öffne `http://localhost:8000/modules/quote_manager.html`.
2. Klicke auf **Exportieren**. Du bekommst die Datei `quotes.json`.

### Eigene Texte exportieren
```bash
python3 -m http.server
```
*(Server starten)*
1. Rufe `http://localhost:8000/modules/direct_exporter.html` auf.
2. Schreibe deinen Text in das Feld.
3. Dateinamen eingeben und auf **Als Text speichern** klicken.
4. Für eine JSON-Datei wähle **Als JSON speichern**.
5. Die Datei landet im Download-Ordner.


## Weiterführende Laienvorschläge zur Oberfläche

- **Schaltflächen-Stile anpassen (CSS = Gestaltungssprache)**
  ```bash
  nano modules/common.css
  ```
  *(Datei öffnen und die Werte von `--button` und `--button-hover` ändern. Mit `Strg+O` speichern und `Strg+X` beenden.)*

- **Änderungen sofort ansehen**
  ```bash
  python3 -m http.server
  ```
  *(Startet einen kleinen Server. Danach `http://localhost:8000/index-MODULTOOL.html` im Browser laden.)*

- **Einheitliche Knöpfe nutzen (class = Klasse)**
  Füge jedem `<button>` das Attribut `class="btn"` hinzu. So greifen die zentralen Regeln aus `modules/common.css`.

- **Farbkontrast testen (Kontrast = Unterschied von Vorder- und Hintergrund)**
  1. `bash tools/start_tool.sh` – startet Server und Browser.
  2. `http://localhost:8000/modules/contrast_optimizer.html` öffnen.
  3. Farben wählen und auf **Kontrast prüfen** klicken. Ab 4.5 gilt der Text als gut lesbar.
- **Panel-Größe testen (responsive = reagiert auf Fensterbreite)**
  1. Drücke `Strg+Shift+I` im Browser, um die Entwicklerwerkzeuge zu öffnen.
  2. Klicke auf das Handy-Icon (Device Toolbar).
  3. Ändere die Breite und beobachte das Layout.

## Updates und Versionen

Um das Tool aktuell zu halten, gibt es zwei einfache Befehle:

```bash
npm start
```

*Startet den lokalen Server über das Skript `start_tool.sh`.*

```bash
npm run sync
```

*Aktualisiert die Liste der Modul-Versionen über `lib/update_manager.js`.*

Nach dem Aktualisieren kannst du `npm update` ausführen, um alle Pakete auf den
neuesten Stand zu bringen.

## Weiterfuehrende Laienvorschlaege (Ergaenzung)

- **Aenderungshistorie ansehen (History = Verlauf)**
  ```bash
  git log --oneline
  ```
  *(Zeigt knapp an, was zuletzt gespeichert wurde.)*

- **todo.txt abgleichen (sync = abgleichen)**
  ```bash
  nano todo.txt
  bash tools/sync_todo.sh
  ```
  *("sync_todo.sh" kopiert die Datei in "data/todo.txt" und "platzhalter.txt".)*

- **plugin.json pruefen (Manifest = Datenblatt)**
  ```bash
  cat plugins/modulID/plugin.json
  ```
  *(Zeigt ID, Name und Version des Moduls.)*

- **Versionen anzeigen (module_versions.json)**
  ```bash
  cat module_versions.json
  ```
  *(Listet die gespeicherten Modulversionen auf.)*

- **Platzhalter-Beispiel erweitern**
  ```bash
  nano modules/.placeholder
  ```
  *(Am Ende findest du die Funktion `demoSpeichern`. Sie zeigt, wie `saveJSON` und `loadJSON` (Daten sichern und laden) funktionieren.)*
Dort gibt es jetzt auch `demoLoeschen`. Diese Funktion nutzt `deleteJSON` und entfernt den gespeicherten Eintrag wieder.

## GitHub Actions nutzen
GitHub Actions sind automatische Abläufe auf GitHub. Sie prüfen den Code nach jedem Hochladen (*Push*).

1. Änderungen sichern und hochladen:
   ```bash
   git add .
   git commit -m "Änderungen gespeichert"
   git push
   ```
2. Auf der GitHub-Seite siehst du unter **Actions** den Ablauf `Lint and Test`.
   Er ruft `npm run lint`, `npm test` und `bash tools/selfcheck.sh` auf.
3. Bei Erfolg steht ein grünes Häkchen neben dem Commit. Fehler kannst du dort nachlesen.

## Weitere Laienvorschläge

- **Startfenster schließen**
  Drücke die Taste **Esc** oder klicke oben rechts auf **X**, wenn das Willkommensfenster erscheint.

- **Backup der Daten (zip = komprimierte Datei)**
  ```bash
  zip -r backup_$(date +%Y-%m-%d).zip data/ modules/ panels/
  ```
  *(Erzeugt eine Sicherungsdatei mit Datum im Namen.)*

- **Backup per Skript**
  ```bash
  bash tools/zip_backup.sh
  ```
  *(Startet eine automatische ZIP-Erstellung.)*


- **Aufgabenliste anzeigen**
  ```bash
  cat todo.txt
  ```
  *(Zeigt alle offenen Punkte an.)*

- **Projektordner verwalten (project = Sammlung deiner Dateien)**
  ```bash
  bash tools/manage_projects.sh list        # zeigt vorhandene Projekte
  bash tools/manage_projects.sh create Test # legt "Test" an und wählt ihn
  bash tools/manage_projects.sh set Test    # setzt "Test" als aktiv
  bash tools/manage_projects.sh current     # zeigt das aktive Projekt
  bash tools/manage_projects.sh delete Test # löscht "Test"
  ```
  *(Mit dem Skript kannst du Projekte erstellen, auswählen, löschen und das aktuelle anzeigen.)*

## Globale Standards (Kurzfassung)

- **Dateien ordentlich halten** (Struktur)
  Siehe `GLOBALE_STANDARDS.md` fuer die komplette Liste.
- **Neues Modul anlegen**
  ```bash
  node tools/create_module.js
  ```
  *(Legt automatisch einen Ordner und Basisdateien an.)*
- **Tests ausfuehren**
  ```bash
  npm test
  ```
  *(Stellt sicher, dass alles funktioniert.)*
- **Favoriten-Startseite öffnen**
  ```bash
  xdg-open modules/favorites_start_screen.html
  ```
  *(Zeigt deine markierten Lieblings-Module im Browser an. "xdg-open" öffnet eine Datei mit dem Standardprogramm.)*

- **Favoriten zurücksetzen (localStorage = Speicher im Browser)**
  ```bash
  node -e "localStorage.clear()"
  ```
  *(Entfernt gespeicherte Favoriten und andere Einstellungen.)*
