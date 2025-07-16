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

