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
