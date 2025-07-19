#!/usr/bin/env node
const fs = require('fs');
const path = require('path');

const modulesFile = path.join(__dirname, '..', 'modules.json');
const logFile = path.join(__dirname, '..', 'logs', 'completed.log');

let modules;
try {
  modules = require(modulesFile).modules;
} catch (e) {
  console.error('modules.json nicht gefunden');
  process.exit(1);
}

const counts = {};
modules.forEach(m => { counts[m.id] = 0; });

if (fs.existsSync(logFile)) {
  const logContent = fs.readFileSync(logFile, 'utf8');
  modules.forEach(m => {
    const regex = new RegExp(m.id, 'gi');
    const matches = logContent.match(regex);
    counts[m.id] = matches ? matches.length : 0;
  });
} else {
  console.error('Logdatei fehlt. Es werden nur die Modulnamen angezeigt.');
}

console.log('Nutzungshäufigkeit:');
for (const m of modules) {
  const count = counts[m.id] || 0;
  const bar = '█'.repeat(count);
  console.log(m.id.padEnd(10) + bar + ' ' + count);
}
