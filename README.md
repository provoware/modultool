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
📄 platzhalter.txt
📁 logs/
📁 tools/ (selfcheck.sh)
📁 .github/workflows/ (validate.yml)

## ℹ️ Erste Schritte

1. Lokalen Server starten:
   ```bash
   python3 -m http.server
   ```
   Damit kannst du `index-DDD.html` im Browser (Programm zum Surfen im Internet) über `http://localhost:8000/index-DDD.html` aufrufen.
2. Selfcheck ausführen:
   ```bash
   bash tools/selfcheck.sh
   ```
3. Mehr Tipps findest du in `LAIENHILFE.md`.
