#ZIEL-ERWEITERUNGS-AGENTS.md
Bis zum release noch umzusetzen, mit erfolgsprüfung und robuster integration. 

Elemente:
# Projektbeschreibung & Entwicklungsplan – **„ModulTool Creator Suite“**

*(Stand 20 Jul 2025 – berücksichtigt neue Wunsch‑Features)*

> **Vision**
> Eine **barrierefreie**, modulare Kreativ‑Plattform für absolute Laien bis Profi‑Nutzer\*innen.
> Hauptfokus: *Song‑Writing*, *Content‑Produktion* & *Medien‑Workflow‑Automatisierung* – alles per **One‑Click‑Bedienung**, lückenloser **Autosave**, fehlertolerant (Fehler werden erkannt, erklärt & selbstkorrigiert).

---

## A Neue Kern‑Anforderungen (Update)

|  #  | Thema                                  |  Neuer Wunsch                                                                                                                   |  Umsetzungsvorschlag                                                                                                                                                                                                                                                                                                                                                                                                                   |
| --- | -------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|  A1 | **Medien­formate**                     | mp3, mp4, avi, ogg, jpg, png, webp (Ein‑ & Ausgabe)                                                                             | FFmpeg Presets + MIME‑Mapping Tabelle                                                                                                                                                                                                                                                                                                                                                                                                  |
|  A2 | **Lokal & portabel**                   | Keine Cloud; Export/Import/Backup global                                                                                        | Backup‑Service → ZIP‑Container + JSON‑Manifest                                                                                                                                                                                                                                                                                                                                                                                         |
|  A3 | **Zugänglichkeit**                     | ≥ 4 farbthemen, augenfreundlich                                                                                                 | WCAG AA Kontrast ≥ 4.5 : 1 ([w3.org](https://www.w3.org/TR/WCAG20-TECHS/G18.html?utm_source=chatgpt.com), [webaim.org](https://webaim.org/resources/contrastchecker/?utm_source=chatgpt.com))                                                                                                                                                                                                                                          |
|  A4 | **Dateinamenschema**                   | `YYYY‑MM‑DD_HH‑MM‑SS_Title.ext`; verwendete Dateien erhalten Suffix `.benutzt_<ts>` und landen in Ordner `<Typ>/<YYYY‑MM‑DD>/`  | Naming‑Service + FileRouter (Filesystem‑API) ([serverfault.com](https://serverfault.com/questions/292014/preferred-format-of-file-names-which-include-a-timestamp?utm_source=chatgpt.com), [softwareengineering.stackexchange.com](https://softwareengineering.stackexchange.com/questions/61683/standard-format-for-using-a-timestamp-as-part-of-a-filename?utm_source=chatgpt.com))                                                  |
|  A5 | **Zwischenablage‑Pool**                | temporäre Datei‑Ablage                                                                                                          | `TempPoolContext` + Auto‑Cleanup‑Timer                                                                                                                                                                                                                                                                                                                                                                                                 |
|  A6 | **Validierung & Selbst‑Repair**        | Vor jedem Schritt → Validate → Success? ja/nein → Auto‑Fix oder Dialog                                                          | Zod Schemas + Retry‑Hook                                                                                                                                                                                                                                                                                                                                                                                                               |
|  A7 | **Neue Module**                        | Brainstorm, Mindmap, Wiki, WebInfo, Archiv‑Export, Module‑Creator, Tag‑Pool, Undo‑Service, Test‑&‑Repair, Konsole, Dateimanager | Siehe erweiterte Modul‑Tabelle unten                                                                                                                                                                                                                                                                                                                                                                                                   |
|  A8 | **Plugin‑System**                      | Module duplizier‑ & einfügbar, Konflikt‑Check                                                                                   | Micro‑Frontend + Dynamic Module Federation ([angulararchitects.io](https://www.angulararchitects.io/blog/dynamic-module-federation-with-angular/?utm_source=chatgpt.com), [medium.com](https://medium.com/%40mguanuradha/micro-frontend-architecture-with-module-federation-65224b8fa61c?utm_source=chatgpt.com), [nx.dev](https://nx.dev/technologies/angular/recipes/dynamic-module-federation-with-angular?utm_source=chatgpt.com)) |
|  A9 | **Konfiguration & Versionsverwaltung** | Persistente Settings & Themes als JSON, mit `version`‑Flag                                                                      | JSON‑Schema Validierung 2020‑12 ([json-schema.org](https://json-schema.org/specification?utm_source=chatgpt.com), [stackoverflow.com](https://stackoverflow.com/questions/61077293/is-there-a-standard-for-specifying-a-version-for-json-schema?utm_source=chatgpt.com))                                                                                                                                                               |
| A10 | **Dashboard Live‑Status**              | Alle Jobs erzeugen Echtzeit‑Berichte                                                                                            | EventBus → Dashboard Widget‑Stream                                                                                                                                                                                                                                                                                                                                                                                                     |

---

## 1 Ziele & Nutzen (unchanged ➜ ergänzt)

1. **Kompletter Kreativ‑Arbeitsplatz**: Text, Audio, Bild & Video nahtlos verknüpft.
2. **Workflow‑Automation**: Funktionsketten speicher‑ & teilbar (Export/Import).
3. **Barrierefreie Bedienung (WCAG AA)** mit min. 4 Themes.
4. **Fehlerresistenz**: Validierung → Auto‑Repair → Dialog falls nötig.
5. **Daten­integrität**: Recycle‑Bin, Versionierung, sofortige Backups.

---

## 2 Erweiterte Funktions‑ & Modulübersicht

| Kategorie        | Modul                       | Kernfunktionen                                                    | Besonderheiten                         |
| ---------------- | --------------------------- | ----------------------------------------------------------------- | -------------------------------------- |
| **Text**         | **Song‑Editor**             | Struktur‑Buttons (Intro, Verse, Chorus …), Drag\&Drop‑Reihenfolge | Linux‑Benennung + Autosave             |
|                  | **Blog‑Modul**              | WYSIWYG; SEO‑Meta‑Felder                                          |                                        |
|                  | **Charakter & Story**       | Figuren‑DB, Plot‑Beziehungen                                      |                                        |
|                  | **Brainstorm‑Board**        | Haftnotiz‑Canvas, Clustering                                      | Mode „Dark / Light / Sepia / Midnight“ |
|                  | **Mindmap**                 | Node‑Graph‑Editor, Export → PNG/SVG                               |                                        |
|                  | **Wiki**                    | Markdown‑Pages, Link‑Graph                                        |                                        |
| **Organisation** | **12‑/1‑Monats‑Planner**    | Monats‑Kacheln, Einträge → Dashboard (akt./nächster Mon.)         |                                        |
|                  | **To‑Do‑Liste**             | Checkbox, Fälligkeit, Tag‑Pool                                    |                                        |
| **Media**        | **Slideshow‑Maker**         | Zufalls‑Dauer, Stapelverarbeitung                                 |                                        |
|                  | **Audio‑Recorder & Player** | WAV‑/MP3‑Aufnahme, Playlist                                       |                                        |
|                  | **Media‑Workspace**         | Datei‑Pooling & Pairing                                           | Realtime Preview                       |
| **Utilities**    | **Batch‑Renamer**           | Muster, Reparatur                                                 |                                        |
|                  | **File Converter**          | mp3/mp4/ogg/avi/png/webp ↔                                        | FFmpeg Preset                          |
|                  | **Tag‑Pool**                | Globales Tag‑Repository                                           |                                        |
|                  | **Quote‑/Snippet‑Sammlung** | Copy‑Button                                                       |                                        |
|                  | **Linux‑Command‑Lib**       | Befehl + Notiz                                                    |                                        |
| **System**       | **Workflow‑Builder**        | Node‑Diagramm, Export/Import                                      |                                        |
|                  | **Module‑Creator**          | JS/TS‑Code‑Input, Kompatibilitäts‑Check                           | Dynamic Module Load                    |
|                  | **Undo‑Service**            | Multilevel Undo/Redo                                              |                                        |
|                  | **Test‑&‑Repair**           | Self‑Tests, Auto‑Fix‑Scripts                                      |                                        |
|                  | **Debug‑Log**               | Ereignis‑Chronik, Severity‑Filter                                 |                                        |
|                  | **Console**                 | Ausführung kleiner CLI‑Snippets                                   |                                        |
|                  | **File‑Manager**            | Seiten‑Panel, CRUD auf Dateien/Ordner                             |                                        |
|                  | **Settings & Globals**      | Themes, Schriftgröße, JSON‑Config                                 |                                        |
|                  | **Dashboard**               | KPIs + Live‑Status Stream                                         |                                        |
|                  | **Update‑Center**           | App‑ & Modul‑Patches                                              |                                        |

---

## 3 Architektur‑Highlights (Update)

* **Plugin‑Kernel** mit **Dynamic Module Federation** ⇒ Module zur Laufzeit ladbar (ES Modules).
* **Config Store**: `config.json` mit `version`‑Schlüssel; validiert per **JSON Schema 2020‑12**.
* **Theme‑Engine**: Tailwind CSS + CSS‑Vars; 4 vorinstallierte Themes (High‑Contrast, Calm, Solarized, Midnight).
* **FileRouter Service**: verwaltet Pfade nach Muster `<Typ>/<YYYY‑MM‑DD>/file.ext` + Suffix `.benutzt_<ts>`.
* **Validation Pipeline**: Zod Schemas → Exception? → Auto‑Repair Hook → Dialog.
* **RecycleBin Service**: Gelöschtes → `.Trash/<YYYY‑MM‑DD>/`.
* **Backup Daemon**: ZIP‑Export aller Daten + Medien; optional Portabel‑Stick‑Sync.

---

## 4 UX‑Richtlinien (Ergänzung)

* **WCAG AA** Kontrast ≥ 4.5 : 1 (Small Text).
* **Theme Switcher** per Hotkey (`Ctrl+Alt+T`).
* **Tooltip‑Beispiele**: Aktionen zeigen Beispiel‑Eingabe.
* **Error‑Dialog**: Enthält Ursache + 1‑Click‑Fix‑Button oder „Details anzeigen“.
* **Drag‑Handles** an allen Karten für Touch‑Geräte.

---

## 5 Roadmap (Phase 1 = „Schritt 1 in einem Abwasch“)

| Zeitraum         | Ziel                                 | Enthalten                                                                                                                                                        |
| ---------------- | ------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Monat 0‑3**    | **GUI Core + Fehlerfreies Handling** | Shell, Sidebar, Top/Bottom‑Bars, Theme‑Engine (4 Themes), Settings, Song‑Editor, To‑Do, Dashboard‑Live‑Status, RecycleBin, FileRouter, Autosave + Versionierung  |
| **Monat 4‑6**    | Creator‑Suite (Media & Workflow)     | Workflow‑Builder, Audio‑Recorder/Player, Slideshow‑Maker, Batch‑Renamer, File‑Converter, Media‑Workspace                                                         |
| **Monat 7‑9**    | Power Tools & Plugins                | Brainstorm, Mindmap, Wiki, Planner, Module‑Creator, Tag‑Pool, Test‑&‑Repair, Console, File‑Manager, Export‑Archiv                                                |
| **QA + Release** | +1 Monat                             | Usability‑Tests (65‑ & 100‑jährige) + Accessibility Audit                                                                                                        |

---

## 6 Implementierungs‑Standards (Auswahl)

* **WCAG 2.2 AA** Farb‑ & Kontrastregeln ✔︎ ([w3.org](https://www.w3.org/TR/WCAG20-TECHS/G18.html?utm_source=chatgpt.com), [maine.edu](https://www.maine.edu/content-management/accessibility/color-ratio/?utm_source=chatgpt.com))
* **Semantic Versioning** für Modul‑Releases (`MAJOR.MINOR.PATCH`).
* **JSON Schema 2020‑12** für Config‑Validierung ✔︎ ([json-schema.org](https://json-schema.org/specification?utm_source=chatgpt.com))
* **Dynamic Module Federation** (Webpack 5) ✔︎ ([angulararchitects.io](https://www.angulararchitects.io/blog/dynamic-module-federation-with-angular/?utm_source=chatgpt.com), [medium.com](https://medium.com/%40mguanuradha/micro-frontend-architecture-with-module-federation-65224b8fa61c?utm_source=chatgpt.com), [nx.dev](https://nx.dev/technologies/angular/recipes/dynamic-module-federation-with-angular?utm_source=chatgpt.com))
* **Chronological File‑Name** `YYYY‑MM‑DD_HH‑MM‑SS` ✔︎ ([serverfault.com](https://serverfault.com/questions/292014/preferred-format-of-file-names-which-include-a-timestamp?utm_source=chatgpt.com), [softwareengineering.stackexchange.com](https://softwareengineering.stackexchange.com/questions/61683/standard-format-for-using-a-timestamp-as-part-of-a-filename?utm_source=chatgpt.com))

---

## 7 Risiken (erweitert)

| Risiko                | Impact      | Gegenmaßnahme                              |
| --------------------- | ----------- | ------------------------------------------ |
| Plugin‑Konflikte      | App‑Crash   | Namespace‑Präfixe + Auto‑Conflict‑Resolver |
| FFmpeg Performance    | Lange Proz. | Web Workers + native Fallback              |
| Accessibility‑Defizit | UX schlecht | Autom. Theme‑Contrast‑Tests (CI)           |

---

## 8 Offene Punkte – Ergebnisse

Die drei offenen Punkte sind nun geklärt ✅

1. **Undo‑Tiefe**: *2 Schritte* (Rückgängig / Wiederholen).
2. **Backup‑Intervall**: *60 Minuten* (stündliche Sicherung – läuft über den «Backup Daemon»).
3. **Dateityp‑Mapping**: siehe neuen **Abschnitt 9**.

---

## 9 Dateityp‑Mapping (FileRouter Service)

> **Ziel**: Einheitliche, linux‑konforme Ablage­struktur; Suffix `.benutzt_<ts>` bei bereits verwendeten Dateien.

| Kategorie    | Formate           | Ordnerpfad‑Muster     | Beispiel‑Dateiname                  |
| ------------ | ----------------- | --------------------- | ----------------------------------- |
| **Audio**    | mp3, ogg, wav     | `audio/<YYYY‑MM‑DD>/` | `2025‑07‑20_12‑45‑30_MySong.mp3`    |
| **Video**    | mp4, avi          | `video/<YYYY‑MM‑DD>/` | `2025‑07‑20_12‑46‑00_Slideshow.mp4` |
| **Bild**     | jpg, png, webp    | `image/<YYYY‑MM‑DD>/` | `2025‑07‑20_12‑50‑00_Artwork.png`   |
| **Dokument** | md, txt, json     | `docs/<YYYY‑MM‑DD>/`  | `2025‑07‑20_12‑55‑10_Lyrics.md`     |
| **Misc.**    | unbekannt/sonstig | `misc/<YYYY‑MM‑DD>/`  | `2025‑07‑20_13‑00‑05_Archive.zip`   |

**Suffix‑Regel** bei Wiederverwendung (Beispiel):
`audio/2025‑07‑20/2025‑07‑20_12‑45‑30_MySong.benutzt_2025‑07‑21‑09‑15‑00.mp3`

---

## 10 Weitere Empfehlungen & Best‑Practices

1. **Automatisierte Tests**: Unit (Jest/Vitest), E2E (Playwright) → CI‑Pipeline.
2. **Accessibility Audit**: axe‑core & Lighthouse in GitHub Actions, Fehlerbudget ≤ 5 issues pro Build.
3. **Onboarding‑Wizard**: Geführter Setup‑Flow + «Tour Modus» (react‑joyride).
4. **Performance‑Budget**: < 200 KB initial JS, < 2 s LCP (Largest Contentful Paint).
5. **Daten‑Verschlüsselung** (optional): AES‑256 für Backups/Portabel‑Export.
6. **Dok‑Generator**: Storybook für UI‑Komponenten + TSDoc für API.
7. **Telemetry (Opt‑in)**: Fehler‑ und Nutzungsstatistiken zur Qualitäts­verbesserung.
8. **Internationalisierung (i18n)**: Locale‑Files (`/locales/*.json`), Fallback en‑US.
9. **User‑Feedback‑Loop**: In‑App Survey nach × Aktionen → automatisch ins Debug‑Log.

---

> **Nächste Schritte:**
>
> * Phase‑1 Backlog finalisieren (GUI Core + Fehler­handling)
> * Prototyp Song‑Editor bauen & mit Undo 2‑Steps + 1h‑Backup testen
> * Implementierung des FileRouter anhand Mapping oben
> * Danach Abnahme & Iterationen
