# Analyse des Layouts

Diese Analyse beschreibt Aufbau und Gestaltung des Modultools. Ziel ist es, Hauptmodul, weitere Module und Sidebars optimal sichtbar zu machen und flexibel zu halten. Fachbegriffe stehen in Klammern.

## 1. Grundstruktur
- **Header** (Kopfzeile): Enthält Titel, Kopierknopf und Buttons für die Sidebars.
- **Hauptbereich**: `app-frame` nutzt ein Grid-Layout. Links und rechts liegen die Sidebars (`aside`), in der Mitte `main` mit den Panels.
- **Panels**: Mehrere `section`-Elemente mit klassischem Kartenlayout. Durch `grid-template-columns: repeat(auto-fit, minmax(...))` passen sich die Panels der Breite an.
- **Footer** (Fußzeile): Kurze Infozeile unten.

## 2. Sichtbarkeit der Sidebars
- Sidebars sind in schmalen Ansichten (unter 780px) ausblendbar. Über kleine Buttons lassen sie sich ein- oder ausklappen.
- Breite und Mindestgrößen sind mit CSS-Variablen definiert (`--sidebar-min`, `--sidebar-max`). So bleiben sie flexibel.
- Der Abstand zu den Panels wird über `dragbar` geregelt (schmale Leiste zum Verschieben).

## 3. Gruppierung der Module
- Module befinden sich in `grid-main`. Die Reihenfolge richtet sich nach der HTML-Struktur.
- Panels besitzen jeweils eine Überschrift (`h2`). Sie lassen sich über den Fokusmodus einzeln anzeigen.
- Jedes Panel kann über Buttons in der Sidebar ein- oder ausgeblendet werden (Checkboxen im Menü).

## 4. Verbesserungsmöglichkeiten
1. **Breakpoints präzisieren**: Zusätzliche Abstufungen bei 1024px und 1400px sorgen für bessere Darstellung auf großen Monitoren.
2. **Seitenleisten-Status speichern**: Offen/zu wird im `localStorage` (Browser-Speicher) gemerkt.
3. **Panel-Breite anpassbar**: Variable `--panel-min` einführen, z.B. `minmax(clamp(18rem,var(--panel-min,33%),22rem),1fr)`.
4. **Fokusmarkierung deutlich**: Farbiger Rahmen (`outline`) bei aktivem Panel, damit klar erkennbar ist, welches Modul im Fokus steht.
5. **Bedienhilfe**: Tooltips (kleine Hinweisfenster) an die Dragbars und Buttons anfügen.

## 5. Anleitung für Laien
1. **Lokalen Server starten**
   ```bash
   bash tools/start_tool.sh
   ```
   *(Startet den kleinen Webserver und öffnet den Browser.)*
2. **Theme wechseln**
   - Rechts auf "Optionen & Themes" klicken.
   - Button "Hell" oder "Blau" wählen.
3. **Panel ein- oder ausblenden**
   - Links im Menü Häkchen bei "Panel anzeigen" setzen oder entfernen.
4. **Fokusmodus** aktivieren
   - Oben im Dropdown "Fokus-Modus" ein Panel auswählen.
   - Über "Zurück zum Grid" wieder alle Panels anzeigen.
5. **Einstellungen speichern**
   ```bash
   git add .
   git commit -m "Stand sichern"
   ```
   *(Legt eine gespeicherte Version an.)*

Diese Punkte erhöhen Flexibilität und Nutzerfreundlichkeit. Weitere Tipps siehe [LAIENHILFE.md](LAIENHILFE.md).
