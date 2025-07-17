# Laienhilfe

Hier findest du einfache Tipps zum Umgang mit dem Projekt. Fachbegriffe stehen in Klammern und werden kurz erklärt.

## Aufgaben anschauen und aktualisieren

1. Öffne das Terminal (Befehlseingabe).
2. Tippe `nano todo.txt` und drücke **Enter**. Dadurch öffnest du die Liste mit offenen Aufgaben.
3. Ergänze neue Punkte oder hake sie ab. Speichere mit `Strg+O`, beende mit `Strg+X`.
4. Danach `bash tools/update_placeholder.sh` ausführen. Das aktualisiert `platzhalter.txt` automatisch.
5. Einmalig: `bash tools/install_hook.sh` ausführen. Danach wird `platzhalter.txt` nach jedem `git commit` automatisch erneuert.

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
Im Ordner `panels` liegt bereits `panel7.html`. Dieses Modul zeigt eine kleine Schnellhilfe mit weiteren Befehlen.
Neu hinzugekommen ist `panel8.html` für einen Zufall mit Gewichtung, `panel9.html` als Befehlsübersicht, `panel10.html` als einfacher Einstieg und `panel11.html` mit häufigen Fragen.
Rechts findest du nun auch einen Hilfebutton, der `LAIENHILFE.md` direkt im Browser öffnet.

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
4. Drücke **Speichern**, damit die Angaben im Browser bleiben.
## Weiterf\u00fchrende Tipps

- **Browser-Speicher leeren (localStorage)**
  1. Modul im Browser öffnen.
  2. Taste F12 drücken und "Konsole" auswählen.
  3. `localStorage.clear()` eintippen und Enter drücken. (Löscht den Browser-Zwischenspeicher.)

- **Projekt erneut prüfen**
  1. `git status` ausführen.
  2. `bash tools/selfcheck.sh` starten.
  3. Fehlermeldungen beachten und Befehle wie `npm install -g htmlhint` nutzen.

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

## Fehlende Module

Keine

## Weitere Laien-Tipps

1. Neues Modul kopieren:
   ```bash
   cp modules/panel04.html modules/neues_panel.html
   ```
   Damit legst du eine Kopie an. Danach `<title>` und `<h2>` anpassen.
2. In `modules.json` einen neuen Eintrag ergänzen.
3. Selfcheck starten:
   ```bash
   bash tools/selfcheck.sh
   ```
4. Aufgabenliste aktualisieren:
   ```bash
   nano todo.txt
   ```
   Änderungen speichern (**Strg+O**) und schließen (**Strg+X**). Danach:
   ```bash
   bash tools/update_placeholder.sh
   ```
Dadurch bleibt `platzhalter.txt` aktuell.

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

1. Befehl ausführen:
   ```bash
   bash tools/update_module_uebersicht.sh
   ```
   Danach findest du die Auflistung in `module_übersicht.txt`.
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

## Datum und Uhrzeit im Dashboard

Im Dashboard (Panel03) steht jetzt oben die aktuelle Uhrzeit und das Datum. Die Anzeige
aktualisiert sich jede Sekunde von selbst.

- Uhrzeit im Terminal anzeigen:
  ```bash
  date
  ```
  (Zeigt Datum und Zeit an)
