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
- **Statusmeldungen** informieren, wenn Eingaben fehlen oder das Kopieren nicht klappt
- **Sichtbarer Tastaturfokus** erleichtert die Navigation per Tastatur
---

## 🧠 Features

- Drag & Drop für Medien, Module, Templates
- Undo-/Redo-System, ZIP-Export, Selfcheck (Fehlerprüfung via `bash tools/selfcheck.sh`)
- Live-Vorschau, große Bedienelemente, Einstellungs-Panel
- Gut sichtbarer Tastaturfokus zur einfachen Navigation
- Projektordner-Management + Fehlerkorrektur


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
📁 logs/
📁 tools/ (selfcheck.sh, update_placeholder.sh, install_hook.sh)
📁 .github/workflows/ (validate.yml)

Führe einmal `bash tools/install_hook.sh` aus. Danach wird `platzhalter.txt` nach jedem Commit automatisch aktualisiert.
📁 tools/ (selfcheck.sh – sichert todo.txt und aktualisiert platzhalter.txt)
📁 .github/workflows/ (validate.yml)
```

Weitere Dateien findest du im Ordner `data/` und im Verzeichnis `tools/`.
## 🧪 Selbstcheck ausführen

Mit diesem Befehl startest du den Selbstcheck (kleines Prüfskript):

```bash
bash tools/selfcheck.sh
```

Das Skript aktualisiert die Datei `data/baumstruktur.txt` und zeigt dir offene Punkte aus `data/todo.txt`. Führe es regelmäßig aus und trage neue Aufgaben immer in `data/todo.txt` ein.
📄 modules.json (Panel-Registrierung)
```

## Lizenz

Dieses Projekt steht unter der [MIT-Lizenz](LICENSE).

📄 modules.json (Registrierung vorhandener Module)
```

## 🔀 Branches zusammenführen
Einfache Anleitung findest du in **LAIENHILFE.md** unter dem Abschnitt "Branches zusammenführen".

## 🔒 Datensicherheit und Backups

Um versehentlichen Datenverlust zu vermeiden, lohnt sich eine lokale Sicherung (Backup). Ein einfaches ZIP-Archiv genügt:

```bash
zip -r backup_$(date +%Y%m%d).zip .
```

Damit wird der gesamte Ordner in eine Archivdatei verpackt. Die Datei lässt sich auf einen USB-Stick kopieren oder extern speichern. So bist du abgesichert, falls etwas schiefgeht.
