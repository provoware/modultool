# 🧰 Modultool

**Modulares Content-Creation-Tool (Werkzeug zur Inhaltserstellung) mit Fokus auf Barrierefreiheit, Systemkritik und Selbstheilung.**
Entwickelt für kreative Subkulturen, Performerinnen, Künstlerinnen und Content-Schaffende.

[Ausführliche Hilfe](LAIENHILFE.md)

## Inhalt
- [Ziele](#-ziele)
- [Aktuelle Start-Module](#-aktuelle-start-module)
- [Features](#-features)
- [Struktur](#-struktur)
- [Offene Punkte](#-offene-punkte-fuer-das-release)
- [Branches zusammenführen](#-branches-zusammenführen)
- [Neues Modul anlegen](#neues-modul-anlegen)
- [Pakete erstellen (.deb & AppImage)](#-pakete-erstellen-deb--appimage)
- [Hilfe](#hilfe)
Zum Starten: `npm start` oder `bash tools/start_tool.sh`. Mit `-h` zeigt das Skript eine Hilfe, `--no-browser` startet nur den Server. Mit `-p 9000` legst du die Anschlussnummer (Port) fest. Alle Varianten prüfen neue Module, installieren fehlende Programme und laden nötige Node-Pakete (`npm install`) automatisch, bevor sie das Tool öffnen.

Der Selfcheck (`bash tools/selfcheck.sh`) fungiert als einfacher HTML-Fehler-Checker und synchronisiert deine Aufgabenlisten.
- [Lokaler Testserver](#-lokaler-testserver)
## 🎯 Ziele

- Offline lauffähiges Creator-Tool für Text, Audio, Bild & Video
- Laientauglich, fehlerrobust & barrierefrei
- Visuell strukturierte Bedienung über GUI
- Modular erweiterbar mit globalem Plugin-System

---

## 🧩 Aktuelle Start-Module

---
- **Panel01: Genre-Liste & Zufall** – Liste eingeben und zufälliges Genre kopieren
- **Panel02: Textbausteine** – kurze Texte speichern und kopieren
- **Panel03: Dashboard: Verlauf** – Aktionen anzeigen und exportieren
- **Panel04: Textbausteine (Vorlagen)** – Vorlagentexte sammeln
- **Panel05: Persona-Switcher** – Profile verwalten
- **Panel06: Story-Sampler** – Ideen zufällig ziehen
- **Panel07: Cover-Layout** – einfacher Titel und Farbe
- **Panel08: Theme-Switcher** – Farbmodus wählen
- **Panel09: Einstellungen** – Schriftart und Pfad
- **Panel10: Jahresplan Übersicht** – Termine pro Monat
- **Panel11: Monats- und Tagesplan** – detaillierte Einträge
- **Panel12: Wiki** – Wissenseinträge speichern
- **Panel13: Blog-Editor** – Blogartikel verfassen
- **Panel14: Fehler & Hilfe** – Fehlermeldungen anzeigen
- **Direkt-Export** – Text oder JSON direkt herunterladen
---

## 🧠 Features

- Drag & Drop für Medien, Module, Templates
- Undo-/Redo-System, ZIP-Export, Selfcheck (Fehlerprüfung via `bash tools/selfcheck.sh`)
- Barrierefreiheits-Report mit `bash tools/a11y_report.sh`
- Filter für Module und Favoritenliste im Menü
- Scrollsync zwischen den Panels (gemeinsame Scroll-Position)
- Live-Vorschau, große Bedienelemente, Einstellungs-Panel
- Gut sichtbarer Tastaturfokus zur einfachen Navigation
- Projektordner-Management + Fehlerkorrektur
- Projektordner lassen sich mit `bash tools/manage_projects.sh` verwalten
  - `list` zeigt alle Projekte, das aktive ist markiert
  - `create NAME` legt einen Ordner an und setzt ihn als aktiv
  - `set NAME` wählt einen bestehenden Ordner
  - `delete NAME` entfernt einen Ordner
  - `current` zeigt das momentan aktive Projekt
- Neues Modul per Skript erstellen (`node tools/create_module.js modulID "Titel"`)
- Automatisches Update via `bash tools/autoupdate.sh`
- Zentrales Konfigurationsschema (`config_schema.json`)
- Warnung vor ungespeicherten Änderungen beim Verlassen
- Direkt-Export-Modul für Text und JSON

- Beispielmodule: Story-Sampler, Info-Manager, Modul-Baukasten

### Geplante Erweiterungen
- Auto-Backup vorhanden, Undo-Verlauf umgesetzt
- Modul-Prüfung vor Aktivierung
- Farbkontrast-Optimierung nach WCAG
- Fokusmodus und Tooltip-Akademie
- Querverlinkung zwischen Panels
- ZIP-Import mit Verteilung
- Schreibschutz pro Panel
- Fehler-Erkennung mit Korrektur
- Entrümplungsmodus und Doppelklick-Kopie
- globaler Suchfilter
---

## 📦 Struktur

```text
📁 panels/
📁 modules/
📁 gui/
📁 core/
📁 assets/
📁 backups/
📁 data/ (baumstruktur.txt, todo.txt)
📄 platzhalter.txt
📄 modules.json
📄 module_versions.json
📄 config_schema.json
📁 logs/
📁 tools/ (selfcheck.sh, autoupdate.sh, create_module.js)
📁 .github/workflows/ (validate.yml)
📄 modules.json (Registrierung vorhandener Module)
```

## 🗒 Offene Punkte für das Release

*Projektordner-Verwaltung umgesetzt: `bash tools/manage_projects.sh`*

## 🔀 Branches zusammenführen
Einfache Anleitung findest du in **LAIENHILFE.md** unter dem Abschnitt "Branches zusammenführen".

## Neues Modul anlegen

Führe das Skript aus, um eine Vorlage zu kopieren:
```bash
node tools/create_module.js panel10 "Mein Modul"
```
Das Skript ergänzt **modules.json** (Modul-Liste) automatisch, sofern die Datei gültiges JSON enthält.
Seit Version 1.0 wird dabei auch `plugins/panel10/plugin.json` erzeugt. Diese Datei enthält ID, Name und Version des Moduls.
## 📦 Pakete erstellen (.deb & AppImage)

Mit dem Skript `tools/build_packages.sh` kannst du ein Debian-Paket (.deb) und ein AppImage erzeugen.

```bash
bash tools/build_packages.sh
```

Voraussetzung sind die Programme `dpkg-deb` und `appimagetool`. Falls sie fehlen, zeigt das Skript eine Warnung an.

## 🪜 Schritt-für-Schritt Start
1. `git clone <REPO>` (Repository, Sammlung der Dateien)
2. `cd modultool`
3. `bash tools/selfcheck.sh`
4. `npm start`  # startet das Tool
5. Browser öffnet sich automatisch. Ein Willkommensfenster erscheint und schließt sich nach 20 Sekunden. Mit **Esc** oder dem kleinen **X** oben rechts kannst du es sofort schließen.
6. Im Modul "Genre-Liste" findest du nun **Undo** und **Redo**. Damit machst du Eingaben rückgängig oder stellst sie wieder her.
7. Rechts in der Leiste kannst du **Scrollsync** ein- oder ausschalten. Dann scrollen alle Panels gemeinsam.

## 🌐 Lokaler Testserver
Um die HTML-Dateien bequem auszuprobieren, kannst du einen kleinen Webserver starten.

```bash
python3 -m http.server
```

Öffne danach `http://localhost:8000` im Browser. So lassen sich alle Module testen, ohne Dateien doppelt anzuklicken.
## ♻ Optimierungsideen
- Nutze `npm run selfcheck` (führt das Prüfskript aus).
- Starte die neuen Unit-Tests mit `npm test`.
- Bei jedem `git push` laufen GitHub Actions (automatische Abläufe) und prüfen den Code mit `npm run lint` und `npm test`.
- Aktualisiere die Modulversionen mit `npm run sync`.
- Führe eine Sicherheitsprüfung aus mit `npm run audit`.
- Sichere Zwischenstände mit `git stash` (temporärer Speicher).
- Erstelle ein ZIP-Backup mit `bash tools/zip_backup.sh`.
- Erstelle neue Module mit `node tools/create_module.js modulID "Titel"`.
- Suche Module über das Feld **Module filtern** und markiere Favoriten per Stern.

## 📂 Module laden

Das Dashboard lädt jetzt alle Module automatisch aus `modules.json`.
Du kannst die Liste mit diesem Befehl prüfen:

```bash
node lib/update_manager.js sync
```

Eine Übersicht der Modulnutzung erhältst du mit:

```bash
node tools/show_usage.js
```

## 🖥 Layout & Zoom
- Über das Dropdown **Fokus-Modus** blendest du alle anderen Panels aus und siehst ein Modul bildschirmfüllend.
- Halte **Strg** gedrückt und rolle mit dem Mausrad, um hinein- oder herauszuzoomen (Browser-Zoom). Mit **Strg+0** stellst du die Normalgröße wieder her.
- Das Tool passt sich nach dem Zoomen automatisch an (Auto-Scale). Kein Neuladen nötig.
- Drücke **F11**, um in den Vollbildmodus zu wechseln. So nutzt du den kompletten Bildschirm ohne Ränder.
- Die rechte Seitenleiste lässt sich über den ⚙-Knopf ein- und ausblenden. Links bleibt stabil und zeigt die Modul-Liste.
## ❓ Fehlerbehebung modules.json
Wenn die Meldung *"Modulliste nicht gefunden (404)"* erscheint, kontrolliere im Terminal:
```bash
ls -l modules.json
```
Fehlt die Datei, lege sie neu an und trage deine Module ein.

Bei *"modules.json defekt"* öffne die Datei und prüfe die Klammern:
```bash
nano modules.json
```

Speichere mit **Strg+O**, beende mit **Strg+X** und lade die Seite neu.
## ⏲ Selfcheck automatisch ausführen
Um das Projekt regelmäßig zu prüfen, kannst du einen Zeitplan (Cronjob) anlegen.

```bash
crontab -e
0 7 * * 1 /pfad/zu/tools/weekly_selfcheck.sh
```
Das ruft jeden Montag um 7 Uhr das Skript `weekly_selfcheck.sh` auf. Es startet den Selfcheck und speichert alles in `logs/weekly_selfcheck.log`.


## Hilfe

Ausführliche Tipps findest du in der Datei [LAIENHILFE.md](LAIENHILFE.md). Dort stehen alle Schritte in einfacher Sprache mit Beispielen.
Um die Hilfe als PDF zu erhalten, führe aus:
```bash
bash tools/offline_help.sh
```
Das Skript benötigt `pandoc` und legt `assets/laienhilfe.pdf` an.
