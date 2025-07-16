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

- **🎲 Genre-Archiv & Eingabe**  
  → Speicherung, Duplikatsprüfung, Komma-getrennte Eingaben  
- **🧠 Zufallsgenerator**  
  → mit Auswahlmodi, Logging, Favoriten und Export

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
📁 logs/
📁 tools/ (selfcheck.sh)
📁 .github/workflows/ (validate.yml)
```

## 🧪 Selbstcheck ausführen

Mit diesem Befehl startest du den Selbstcheck (kleines Prüfskript):

```bash
bash tools/selfcheck.sh
```

Das Skript aktualisiert die Datei `data/baumstruktur.txt` und zeigt dir offene Punkte aus `data/todo.txt`. Führe es regelmäßig aus und trage neue Aufgaben immer in `data/todo.txt` ein.
