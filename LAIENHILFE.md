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
