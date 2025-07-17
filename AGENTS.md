# AGENTS.md – Modultool Agentensystem

## 🎯 Ziel
Agentenframework zur modularen Steuerung, Fehlerkontrolle und fortlaufenden Optimierung des Tools – ganz ohne technisches Vorwissen.

---

## 🧠 Meta-Agent

**🧙‍♂️ Dr. Allwissend_Poppsen**  
- Koordiniert alle Agenten, prüft Konsistenz, UX, Versionskontrolle.  
- Nutzt YAML/Markdown zur Statusübersicht.  
- Beendet sich, wenn alle Prozesse konsistent laufen.

---

## 🚀 Agentenliste

### 📊 Agent_Ordnung  
- Prüft Dateinamen auf Suffixe (`_draft`, `_final`, …)  
- Überwacht max. 2 Branches (`main`, `dev`) — weitere automatisch gemerged  
- Verschiebt Dateien bei Fehlplatzierung  
- Logs in `todo.txt`, erstellt `baumstruktur.txt`

### 🎨 Agent_UI  
- Sichert Responsive Design, Scrollsync, One-Screen-View  
- Wahrbarkeit aller Panels, große Bedienelemente, visuelles Feedback

### 🎲 Agent_Random  
- Zufallsmodi für Genres/Templates/Personen  
- Favoriten, gewichtete Auswahl, Ausgabe mit Logging + Clipboard

### 🧪 Agent_Test  
- CI-Workflow mit HTMLHint, JSONLint, ShellCheck, axe-core  
- `.github/workflows/validate.yml` generiert für automatische Prüfungen :contentReference[oaicite:1]{index=1}

### 🧾 Agent_Doku  
- Pflegt `README.md`, `VISION_AGENTS.md`, `module_versions.json`  
- Sichert konsistente Dokumentation zu jedem Modul

### 🧱 Agent_Baukasten  
- Verwaltet Panels via `modules.json`, Drag&Drop-Einbindung  
- Ermöglicht Modul-Hinzufügung/-Entfernung im GUI

### 🧏 Agent_Access  
- Implementiert WCAG-konformes ARIA, Tastaturnavigation, Contrast Checks  
- Nutzt axe-core zur automatischen Accessibility-Prüfung :contentReference[oaicite:2]{index=2}

### 🪞 Agent_Persona  
- Verwaltung von Figurenprofilen (Name, Stil, Stimme)  
- Verknüpfung mit Zufall, Templates, Story-Sampler

### 🛠 Agent_Selbstcheck
- Erkennt und repariert typische Laienfehler (z. B. fehlende Suffixe, ungültiges JSON)
- Erstellt Backups, aktualisiert `todo.txt`, `baumstruktur.txt` **und `platzhalter.txt`**
- Nutzt dazu `tools/update_placeholder.sh`

---

## 🔧 Systemdateien

.github/workflows/validate.yml → CI-Checks
todo.txt → Änderungslog + Fixes
baumstruktur.txt → Rekursive Projektstruktur
platzhalter.txt → Ausgabe aus `todo.txt`
agents_status.json → Agentenzustand (optional)
modules.json → Panel-Registrierung


---

## ☑ GitHub-Praktiken

- Trunk-based Development mit Branch Protection auf `main`– `main` darf nur per PR gemerged werden :contentReference[oaicite:3]{index=3}  
- Workflow nur für relevante Branches aktiviert – z. B. `branches: [main, dev]` :contentReference[oaicite:4]{index=4}  
- Branches nach Merge sofort löschen :contentReference[oaicite:5]{index=5}

---

## 🛎 Aktivierungsbefehle

```bash
/runs agent_name        # z. B. /runs agent_test  
/status agent_name      # Prüfe Agentenzustand  
/setup github           # Initialsetup CI, Branch Protection
/check ordnung          # Strukturvalidator
bash tools/update_placeholder.sh  # platzhalter.txt mit todo.txt abgleichen
```
