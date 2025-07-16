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

## Genres-&-Zufall-Modul testen

1. Öffne den Ordner `modules` im Dateimanager.
2. Doppelklicke auf `panel01.html`. Dein Browser zeigt das Modul an.
3. Gib mehrere Genres ein, getrennt durch Kommas.
4. Klicke auf **Speichern**. Die Liste wird in `localStorage` (Browser-Zwischenspeicher) gesichert.
5. Mit **Zufall** wählst du einen Eintrag zufällig aus. Darunter entsteht ein kleines Protokoll (Log) mit Uhrzeit.
6. Über **Kopieren** landet das Ergebnis in der Zwischenablage. Der Button färbt sich kurz grün als Bestätigung.

## Profilgewichtung nutzen

1. Öffne `panel02.html` im Ordner `modules`.
2. Gib einen Namen und optional eine Zahl bei **Gewichtung** ein (1 = selten, 10 = oft).
3. Trage deine Genres ein und klicke **Profil speichern**.
4. Beim Klick auf **Zufall** wird zuerst ein Profil gemäß Gewichtung ausgewählt und daraus ein Genre angezeigt.

Die gespeicherten Module findest du gesammelt in `modules.json`.

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
