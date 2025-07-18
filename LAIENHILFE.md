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
3. Öffne dann `http://localhost:8000/index-MODULTOOL.html` im Browser (Programm zum Surfen im Internet).
4. Mit `Strg+C` beendest du den Server wieder.

## Tooltips & Eingabehilfen

- Viele Felder zeigen nun Beispieltexte *(Placeholder = Platzhalter)*.
- Halte die Maus über ein Eingabefeld, um einen **Tooltip** (kurzer Hinweis) zu sehen.
- Beispiel: Im Modul *Persona-Switcher* weist das Namensfeld mit "Name des Profils" auf den Zweck hin.
- Diese Tipps helfen, schneller zu verstehen, was eingetragen werden soll.

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
## Geplante Erweiterungen

Einige Funktionen sind noch in Arbeit. Die wichtigsten Punkte aus `todo.txt` sind:
- Erinnerung an ungespeicherte Änderungen beim Beenden
- persönlicher Startbildschirm mit Favoriten ("Dashboard")
- Auto-Backup alle 5 Minuten und Undo-Verlauf (Rückgängig machen)
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
- Todo-Listen-Modul
- Songtext-Editor mit Titelfeld, Notizen und Text
- Dialog-Schreiber für eigene Charaktere
- Info-Manager zum Sammeln von Befehlen
- Zitaten-Modul mit Autor- und Zitatfeld
- Interaktiver Modulbaukasten
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

## Textbaustein-Modul benutzen

1. Öffne `panel02.html` im Ordner `modules`.
2. Trage einen kurzen Titel und den Text in die Felder ein.
3. Klicke auf **Hinzufügen**. Der Eintrag erscheint darunter in der Liste.
4. Über **Kopieren** landet der Text in deiner Zwischenablage.
5. Mit **Löschen** entfernst du einen Eintrag aus der Liste und dem Speicher.
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

1. Öffne `panel02.html` im Ordner `modules`.
2. Gib einen Profilnamen ein und ergänze deine Genres.
3. Wähle bei Bedarf eine **Gewichtung** (Zahl bestimmt, wie oft das Profil gezogen wird).
4. Mit **Profil speichern** legst du die Liste an.
5. Über **Zufall** erhältst du eines der Genres aus dem gewählten Profil.
6. Mit **Gewichteter Zufall** wird ein Profil nach Gewicht gewählt und daraus ein Genre angezeigt.

Die gespeicherten Module findest du gesammelt in `modules.json`.

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

- Undo/Redo-Funktion
- ZIP-Backup erstellen
- Filter/Favoriten
- Scrollsync und Projektordner auswählen
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

## Prüf-Funktionen nutzen

*In `validation.js` stecken allgemeine Validierungsfunktionen (Prüfroutinen).*
1. Beispiel: Datum testen
   ```bash
   node -e "import('./validation.js').then(m=>console.log(m.isValidDate('2025-01-01')))">
   ```
   Ergebnis **true** bedeutet gültig, sonst **false**.
2. Die Kalender-Module benutzen diese Funktionen automatisch beim Speichern.

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

### 6. Tests und CI
```bash
bash tools/selfcheck.sh
```
Der Selfcheck ruft HTML-, JSON- und Shell-Pr\u00fcfungen auf.

### 7. \u00c4nderungen hochladen
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

