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

## Flexibilität & Nutzerfreundlichkeit erhöhen

* **Konfigurationsdatei bearbeiten:** `nano .modultoolrc.json`
  `.json` (JavaScript Object Notation - Textformat für Einstellungen).
  Ändere zum Beispiel `"default_export_format": "txt"` für Text-Export.
  Danach `bash tools/selfcheck.sh` ausführen.

* **Farbschema wechseln:** `nano index-DDD.html` öffnen.
  Suche im `<body>`-Tag nach `data-theme`. Werte wie `dark`, `light` oder `blue` ändern das Aussehen.
  Speichern und Seite neu laden.

* **Eigenes Modul erstellen:**
  `cp modules/panel01.html modules/panel02.html` kopiert ein Beispiel.
  Bearbeite die Kopie mit `nano modules/panel02.html` und passe Titel und Funktionen an.
  Neue Module erscheinen im Browser, sobald die Datei geladen wird.

