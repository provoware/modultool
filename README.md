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
---

## 🧠 Features

- Drag & Drop für Medien, Module, Templates
- Undo-/Redo-System, ZIP-Export, Selfcheck (Fehlerprüfung via `bash tools/selfcheck.sh`)
- Live-Vorschau, große Bedienelemente, Einstellungs-Panel
- Gut sichtbarer Tastaturfokus zur einfachen Navigation
- Projektordner-Management + Fehlerkorrektur
- Automatisches Update via `bash tools/autoupdate.sh`

---

## 📦 Struktur

```text
📁 panels/
📁 modules/
📁 data/ (baumstruktur.txt, todo.txt)
📄 platzhalter.txt
📁 logs/
📁 tools/ (selfcheck.sh – sichert todo.txt und aktualisiert platzhalter.txt,
           autoupdate.sh – holt neue Versionen)
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
