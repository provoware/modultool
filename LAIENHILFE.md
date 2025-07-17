# Laienhilfe

Hier findest du einfache Tipps zum Umgang mit dem Projekt. Fachbegriffe stehen in Klammern und werden kurz erklärt.

## Aufgaben anschauen und aktualisieren

1. Öffne das Terminal (Befehlseingabe).
2. Tippe `nano todo.txt` und drücke **Enter**. Dadurch öffnest du die Liste mit offenen Aufgaben.
3. Ergänze neue Punkte oder hake sie ab. Speichere mit `Strg+O`, beende mit `Strg+X`.
4. Danach `bash tools/update_placeholder.sh` ausführen. Das aktualisiert `platzhalter.txt` automatisch.

## Selbstcheck starten

Der Selbstcheck prüft das Projekt auf häufige Fehler.

Dabei wird deine Aufgabenliste automatisch gesichert und
`platzhalter.txt` aktualisiert.

```bash
bash tools/selfcheck.sh
```

Falls Meldungen erscheinen, befolge die Tipps. Zum Beispiel wird `htmlhint` erwähnt, wenn es fehlt. Dann kannst du es mit `npm install -g htmlhint` (JavaScript-Prüfwerkzeug) installieren.

## Änderungen sichern

1. Mit `git status` siehst du geänderte Dateien.
2. `git add dateiname` fügt sie zur Sicherung hinzu.
3. `git commit -m "Kurze Beschreibung"` speichert die Änderungen dauerhaft.
4. `git push` überträgt alles ins Online-Repository.

So behältst du jederzeit die Kontrolle über deine Dateien.

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

