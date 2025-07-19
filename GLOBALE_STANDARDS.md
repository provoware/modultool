# Globale Standards

Diese Datei sammelt allgemeine Regeln fuer das Projekt. Die Texte sind absichtlich kurz gehalten. Fachbegriffe stehen in Klammern und werden direkt erklaert.

## 1. Dateien strukturieren

- **Klar benennen**: Dateinamen klein und ohne Leerzeichen. Beispiel: `mein_modul.js`.
- **Ordner nutzen**: HTML-Dateien kommen nach `panels/`, Skripte nach `modules/`, Daten nach `data/`.
- **Dokumentieren**: Jede Funktion kurz erklaeren. Kommentarzeichen sind `//` in JavaScript.

## 2. Mit Git arbeiten

- **Neuen Zweig (Branch) anlegen**
  ```bash
  git checkout -b neuer_zweig
  ```
  *(Ein Branch ist ein getrennter Entwicklungsstrang.)*
- **Aenderungen sichern**
  ```bash
  git add DATEI
  git commit -m "Beschreibung"
  git push -u origin neuer_zweig
  ```
- **Zusammenfuehren (Merge)**: Auf GitHub einen Pull Request stellen.

## 3. Code testen

- **Tests ausfuehren**
  ```bash
  npm test
  ```
  *(Mocha prueft die Funktionen automatisch.)*
- **Eigenen Check**
  ```bash
  npm run selfcheck
  ```
  *(Ueberprueft HTML, YAML und Shellskripte, falls die Pruefprogramme installiert sind.)*

## 4. Barrierefreiheit beachten

- **Alternativtexte** fuer Bilder setzen: `<img alt="Beschreibung" ...>`
- **Tastaturbedienung** sicherstellen: Buttons mit `tabindex="0"` versehen.
- **Kontrast pruefen**
  ```bash
  npx lighthouse http://localhost:8000/index-MODULTOOL.html
  ```
  *(Lighthouse misst die Lesbarkeit der Farben.)*

Weitere Details findest du in der Datei `LAIENHILFE.md`.
