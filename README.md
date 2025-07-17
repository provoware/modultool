# 🧰 Modultool

**Modulares Content-Creation-Tool (Werkzeug zur Inhaltserstellung) mit Fokus auf Barrierefreiheit, Systemkritik und Selbstheilung.**
Entwickelt für kreative Subkulturen, Performerinnen, Künstlerinnen und Content-Schaffende.

---

## 🎯 Ziele

- Offline lauffähiges Creator-Tool für Text, Audio, Bild & Video
- Laientauglich, fehlerrobust & barrierefrei
- Visuell strukturierte Bedienung über GUI
- Modular erweiterbar mit globalem Plugin-System

---

## 🧩 Aktuelle Start-Module

---
- **📝 Panel01: Genre-Liste & Zufall**
  → Listeneingabe, Speicherung und Zufallswahl mit Log & Kopierfunktion
- **🎛 Panel02: Genre-Profile**
  → Mehrere Genre-Listen unter Profilnamen speichern, optional mit Gewichtung
  → Button "Gewichteter Zufall" wählt ein Profil nach Gewicht und daraus ein Genre
- **📊 Panel03: Dashboard – Verlauf**
  → Zufallsausgaben aus allen Modulen zentral anzeigen und löschen
- **📋 Panel04: Textbausteine**
  → Kurze Textbausteine speichern und per Klick in die Zwischenablage kopieren
- **🧑‍🎤 Panel05: Persona-Switcher**
  → Verschiedene Figurenprofile speichern und auswählen
- **🖖 Panel06: Story-Sampler**
  → Kurze Ideen sammeln und zufällig auswählen
- **🖼️ Panel07: Cover-Layout**
  → Einfacher Titel und Farbvorschau für Cover
 - **🎨 Panel08: Theme-Switcher**
   → Farbmodus (dunkel, hell, blau) wählen und speichern
 - **⚙️ Panel09: Einstellungen**
   → Schriftart (Font), Größe, Button-Rundung und Standardpfad einstellen. Dadurch haben alle Module den gleichen Stil.
 - **📚 Panel10: Wiki**
   → Wissenseinträge unter Titel speichern und laden
 - **📰 Panel11: Blog-Editor**
   → Blogartikel unter ihrem Titel verfassen und speichern
 - **Statusmeldungen** informieren, wenn Eingaben fehlen oder das Kopieren nicht klappt
 - **Sichtbarer Tastaturfokus** erleichtert die Navigation per Tastatur
- **📑 Panel02: Textbausteine**
  → Kurze Texte speichern, kopieren und löschen
  → Listeneingabe, gespeicherte Liste wird alphabetisch sortiert, Zufallswahl mit Log & Kopierfunktion sowie grünem Feedback beim Speichern
- **🎲 Genre-Archiv & Eingabe**  
  → Speicherung, Duplikatsprüfung, Komma-getrennte Eingaben
- **🧠 Zufallsgenerator**  
  → mit Auswahlmodi, Logging, Favoriten und Export
- **📋 Todo-Listen-Modul**  
  → einfache Aufgabenlisten verwalten
- **🎤 Songtext-Editor**  
  → Felder für Titel, Notizen und Text
- **📓 Dialog-Schreiber**  
  → Charaktere anlegen und Dialoge speichern
- **ℹ️ Info-Manager**  
  → eigene Befehls- oder Webseiten-Infos sammeln
- **💬 Zitaten-Modul**  
  → Felder für Autor, Zitat und optionale Notiz
- **🧱 Modulbaukasten**  
  → Module per Buttons flexibel anordnen

---
- **📝 Panel01: Genre-Liste & Zufall**
  → Listeneingabe, Speicherung und Zufallswahl mit Log & Kopierfunktion
- **🎛 Panel02: Genre-Profile**
  → Mehrere Genre-Listen unter Profilnamen speichern, optional mit Gewichtung
  → Button "Gewichteter Zufall" wählt ein Profil nach Gewicht und daraus ein Genre
 - **📊 Panel03: Dashboard – Verlauf**
  → Zufallsausgaben aus allen Modulen zentral anzeigen und löschen
  → Oben laufende Anzeige von Datum und Uhrzeit
- **📋 Panel04: Textbausteine**
  → Kurze Textbausteine speichern und per Klick in die Zwischenablage kopieren
- **🧑‍🎤 Panel05: Persona-Switcher**
  → Verschiedene Figurenprofile speichern und auswählen
- **🖖 Panel06: Story-Sampler**
  → Kurze Ideen sammeln und zufällig auswählen
- **🖼️ Panel07: Cover-Layout**
  → Einfacher Titel und Farbvorschau für Cover
- **🎨 Panel08: Theme-Switcher**
  → Farbmodus (dunkel, hell, blau) wählen und speichern
- **⚙️ Panel09: Einstellungen**
  → Schriftart (Font), Größe und Button-Rundung global anpassen. Dadurch haben alle Module den gleichen Stil.
- **📂 Panel10: Modul-Vorlage**
  → Vorlage für eigene Module per Skript erstellen
- **📆 Panel10: Jahresplan Übersicht**
  → Zeigt alle Monate des Jahres mit den gespeicherten Terminen aus Panel11
- **🗓️ Panel11: Monats- und Tagesplan**
  → Termine pro Tag anlegen und verwalten, aktualisiert automatisch das Dashboard
- **Globale Validierungsfunktionen**
  → Datei `validation.js` stellt Datum- und Text-Prüfung bereit
- **Modul-Dropdown im Dashboard**
  → Dort lassen sich alle Module aus `modules.json` bequem öffnen
- **Statusmeldungen** informieren, wenn Eingaben fehlen oder das Kopieren nicht klappt
- **Sichtbarer Tastaturfokus** erleichtert die Navigation per Tastatur
---

## 🧠 Features

- Drag & Drop für Medien, Module, Templates
- Undo-/Redo-System, ZIP-Export, Selfcheck (Fehlerprüfung via `bash tools/selfcheck.sh`)
- Live-Vorschau, große Bedienelemente, Einstellungs-Panel
- Gut sichtbarer Tastaturfokus zur einfachen Navigation
- Projektordner-Management + Fehlerkorrektur
- Neues Modul per Skript erstellen (`bash tools/create_module.sh`)
- Automatisches Update via `bash tools/autoupdate.sh`


### Geplante Erweiterungen
- Erinnerung an ungespeicherte Änderungen
- Favoriten-Startbildschirm
- Auto-Backup und Undo-Verlauf
- Modul-Prüfung vor Aktivierung
- Farbkontrast-Optimierung nach WCAG
- Fokusmodus und Tooltip-Akademie
- Querverlinkung und Direkt-Export
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
📁 data/ (baumstruktur.txt, todo.txt)
📄 platzhalter.txt
📄 modules.json
📄 module_versions.json
📁 logs/
📁 tools/ (selfcheck.sh – sichert todo.txt und aktualisiert platzhalter.txt,
           autoupdate.sh – holt neue Versionen)
📁 tools/ (selfcheck.sh, update_placeholder.sh, install_hook.sh)
📁 .github/workflows/ (validate.yml)

Führe einmal `bash tools/install_hook.sh` aus. Danach wird `platzhalter.txt` nach jedem Commit automatisch aktualisiert.
📁 tools/ (selfcheck.sh – sichert todo.txt und aktualisiert platzhalter.txt)
📁 .github/workflows/ (validate.yml)
📄 modules.json (Registrierung vorhandener Module)
```

## 🗒 Offene Punkte für das Release

- Undo/Redo-Funktion
- ZIP-Backup
- Filter und Favoriten
- Scrollsync und Projektordner-Verwaltung

## 🔀 Branches zusammenführen
Einfache Anleitung findest du in **LAIENHILFE.md** unter dem Abschnitt "Branches zusammenführen".

## Neues Modul anlegen

Führe das Skript aus, um eine Vorlage zu kopieren:
```bash
bash tools/create_module.sh panel10 "Mein Modul"
```
Das Skript ergänzt **modules.json** (Modul-Liste) automatisch.
## 📦 Pakete erstellen (.deb & AppImage)

Mit dem Skript `tools/build_packages.sh` kannst du ein Debian-Paket (.deb) und ein AppImage erzeugen.

```bash
bash tools/build_packages.sh
```

Voraussetzung sind die Programme `dpkg-deb` und `appimagetool`. Falls sie fehlen, zeigt das Skript eine Warnung an.

## 🌐 Lokaler Testserver
Um die HTML-Dateien bequem auszuprobieren, kannst du einen kleinen Webserver starten.

```bash
python3 -m http.server
```

Öffne danach `http://localhost:8000` im Browser. So lassen sich alle Module testen, ohne Dateien doppelt anzuklicken.
