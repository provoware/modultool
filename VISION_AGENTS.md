# 🌟 VISION_AGENTS.md – Modultool (Stand: 2025-07-15)

> Vision: Modultool – ein modularer Offline-Toolkit für kreative Privatanwender  
> Fokus: intuitive UX, Barrierefreiheit, responsive Architektur, modulare Erweiterung

---

## 📚 Best Practices & Standards (Web-Referenz)

- **Responsive Design**  
  - Fluid Grids, Flexbox/CSS Grid → für dynamische Layouts auf allen Geräten :contentReference[oaicite:4]{index=4}  
  - Mobile‑First-Ansatz und Breakpoints verwenden :contentReference[oaicite:5]{index=5}

- **Barrierefreiheit (WCAG)**  
  - ARIA‑Labels, Fokus-Indikatoren, Tastaturnavigation :contentReference[oaicite:6]{index=6}  
  - Tools wie WAVE oder Axe einsetzen zur Prüfung :contentReference[oaicite:7]{index=7}

- **Modular JavaScript (ESM/CJS)**  
  - Klare `import`/`export`-Struktur, State-Isolation, Singleton vs. Klassenpattern :contentReference[oaicite:8]{index=8}  
  - Unobtrusive JS: JS separat halten, Inhalte bei Script-Ausfall weiterhin funktionieren :contentReference[oaicite:9]{index=9}

- **Responsive UX-Komponenten**  
  - UI-Komponenten als wiederverwendbare Blöcke mit Style Guide/Designsystem :contentReference[oaicite:10]{index=10}  
  - Sofort-Feedback, große Touchflächen (mind. 44px) :contentReference[oaicite:11]{index=11}

---

## 🧩 Modultool Übersicht – Module & Features

### 🔹 Modul-Grundgerüst (Panels)
- Panel01: *Genres, Archiv, Zufallsgenerator* (erste Kombi)
- Panel02: *Templates* (Textbausteine)
- Panel03: *Dashboard / Logging*
- Panel04: *Modul-Import*
- Panel05–09: Erweiterungsmodule nach Bedarf (Persona, Story usw.)

### 🌟 Erweiterte Kreativmodule
- Persona-Switcher  
- Story-Sampler  
- Cover/Layout-Modul  
- Projektorganizer  
- Asset-Finder  
- Quote/Line-Manager  

### 🛠 UX‑Standards
- **Sofort-Feedback**, **Hilfetexte**, **Ein-Klick‑Buttons**
- **Hover-Vorschau**, **große Touch-Flächen**, **logische Struktur**
- **Drag & Drop**, **Undo/Redo**, **ZIP-Backup**
- **Filter, Favoriten**, **Scrollsync**, **Einstellungs-Panel**
- **Projektordner-Startwahl**, **Autofokus + Clear-Buttons**

### 🕸 Globale Technische Standards
- Responsive Layout komplett via CSS Grid + Flexbox
- ESM-Modulstruktur, State-Isolation, `package.json exports`
- Unobtrusive JS + Progressive Enhancement
- ARIA + WCAG ≥2.1 Konformität
- Accessibility Testing via Axe/WAVE

---

## 🎯 Agenten-Ziele – Iteration & Verantwortung

### Panel01: Genres & Zufall – Kombi-Modul
| Feature                     | Status | Bemerkung |
|----------------------------|--------|-----------|
| Comma-Split + Duplikate     | ⬜     | alphabetisch, Profilbindung |
| Archivsicherung & Edit      | ⬜     | Inline, JSON |
| Zufallsgenerator mehrere Modi | ⬜   | 3/6/9/12/15, Profilgewichte |
| Logging mit Zeitstempel     | ⬜     | ins Dashboard |
| Copy-Funktion & Feedback    | ⬜     | Clipboard, Hinweisfarben |

---

### Panel07‑09: Erweiterungsmodule
- Persona-Switcher: ✅  
- Story-Sampler: ✅  
- Cover/Layout: ⬜  

---

### System-Agenten (globale Funktionen)
- Drag & Drop: ✅ implementiert  
- Undo/Redo: ⬜ geplant  
- ZIP-Backup: ⬜  
- Filter, Favoriten: ⬜  
- Scrollsync, Settings-Panel, Projektordner: ⬜

---

## 🛠 Nächste Iterationsschritte

```yaml
target: "Panel01 Genres+Archiv+Zufall"
priority: hoch
tasks:
  - UI-Layout mit Grid/Flex und ARIA/Fokus
  - JS: commaSplit -> uniqueSort -> JSON-Save/Load
  - Zufallsmodi + Profilgewichtung umsetzen ⬜ offen
  - Logging + Dashboard-Integration
  - Clipboard-Ziel + farbiges Feedback
  - CSS responsiv + Test via Axe/WAVE
expected: "Modul startet auf einem Bildschirm, responsive, barrierefrei, modular erweiterbar"
owner: "pppoppi + Dr. Allwissend_Poppsen"
