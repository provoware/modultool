export function loadModuleList(file = 'modules.json') {
  if (typeof window !== 'undefined' && window.fetch) {
    return fetch(file).then(r => r.json()).then(d => d.modules || []);
  }
  const fs = require('fs');
  try {
    const data = fs.readFileSync(file, 'utf8');
    const json = JSON.parse(data);
    return Promise.resolve(json.modules || []);
  } catch (e) {
    return Promise.resolve([]);
  }
}
