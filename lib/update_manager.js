#!/usr/bin/env node
const fs = require('fs');

const modulesFile = 'modules.json';
const versionFile = 'module_versions.json';

function loadJSON(file, fallback = {}) {
  try {
    return JSON.parse(fs.readFileSync(file, 'utf8'));
  } catch {
    return fallback;
  }
}

function saveJSON(file, data) {
  fs.writeFileSync(file, JSON.stringify(data, null, 2));
}

function syncVersions() {
  const modules = loadJSON(modulesFile, { modules: [] }).modules;
  const versions = loadJSON(versionFile, {});
  let changed = false;
  modules.forEach(m => {
    if (!versions[m.id]) {
      versions[m.id] = '1.0';
      changed = true;
    }
  });
  if (changed) {
    saveJSON(versionFile, versions);
    console.log('module_versions.json aktualisiert.');
  } else {
    console.log('Alle Module besitzen bereits eine Versionsnummer.');
  }
}

function bumpVersion(id) {
  const versions = loadJSON(versionFile, {});
  if (!versions[id]) {
    console.error('Unbekannte Modul-ID:', id);
    process.exit(1);
  }
  const parts = versions[id].split('.');
  const major = parseInt(parts[0] || '1', 10);
  const patch = parseInt(parts[1] || '0', 10) + 1;
  versions[id] = `${major}.${patch}`;
  saveJSON(versionFile, versions);
  console.log(`Version von ${id} auf ${versions[id]} erhöht.`);
}

const [,,cmd,arg] = process.argv;
if (!cmd || (cmd !== 'sync' && cmd !== 'bump')) {
  console.log('Nutzung: node lib/update_manager.js sync');
  console.log('       node lib/update_manager.js bump <Modul-ID>');
  process.exit(1);
}

if (cmd === 'sync') {
  syncVersions();
} else {
  if (!arg) { console.error('Modul-ID fehlt.'); process.exit(1); }
  bumpVersion(arg);
}
