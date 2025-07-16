# 🧰 Modultool

**Modulares Content-Creation-Tool mit Fokus auf Barrierefreiheit, Systemkritik & Selbstheilung.**  
Entwickelt für kreative Subkulturen, Performerinnen, Künstler & Content-Schaffende.

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
- **🎛 Panel02: Genre-Profile (Gewichtung)**
  → Mehrere Genre-Listen unter Profilnamen speichern und gewichten
- **📊 Panel03: Dashboard – Verlauf**
  → Zufallsausgaben aus allen Modulen zentral anzeigen und löschen
- **📋 Panel04: Textbausteine**
  → Kurze Textbausteine speichern und per Klick in die Zwischenablage kopieren
- **Statusmeldungen** informieren, wenn Eingaben fehlen oder das Kopieren nicht klappt
- **Geplante Module:** Persona-Switcher (Panel05), Story-Sampler (Panel06), Cover/Layout (Panel07)
---

## 🧠 Features

- Drag & Drop für Medien, Module, Templates
- Undo-/Redo-System, ZIP-Export, Selfcheck
- Live-Vorschau, große Bedienelemente, Einstellungs-Panel
- Projektordner-Management + Fehlerkorrektur

---

## 📦 Struktur

```text
📁 panels/
📁 modules/
📁 data/ (baumstruktur.txt, todo.txt)
📄 platzhalter.txt
📁 logs/
📁 tools/ (selfcheck.sh – sichert todo.txt und aktualisiert platzhalter.txt)
📁 .github/workflows/ (validate.yml)
📄 modules.json (Registrierung vorhandener Module)
```
