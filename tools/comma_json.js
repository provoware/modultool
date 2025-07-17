#!/usr/bin/env node
const fs = require('fs');
const [,,cmd, input, out] = process.argv;
if(!cmd || (cmd!=='save' && cmd!=='load')) {
  console.log('Usage: node tools/comma_json.js save "a,b" file.json');
  console.log('       node tools/comma_json.js load file.json');
  process.exit(1);
}
if(cmd==='save') {
  if(!input || !out) {
    console.log('Missing input or output file.');
    process.exit(1);
  }
  const list = [...new Set(input.split(',').map(s=>s.trim()).filter(Boolean))]
    .sort((a,b)=>a.localeCompare(b,'de'));
  fs.writeFileSync(out, JSON.stringify(list, null, 2));
  console.log(`Saved ${list.length} items to ${out}`);
} else if(cmd==='load') {
  if(!input) { console.log('Missing file to load.'); process.exit(1); }
  try {
    const data = JSON.parse(fs.readFileSync(input, 'utf8'));
    console.log('Loaded:', Array.isArray(data) ? data.join(', ') : data);
  } catch(e) {
    console.error('Error reading', input, e.message);
  }
}
