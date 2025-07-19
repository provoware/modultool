export function loadModuleList(file = 'modules.json') {
  if (typeof window !== 'undefined' && window.fetch) {
    return fetch(file)
      .then(r => r.json())
      .then(d => d.modules || [])
      .catch(() => []);
  }

  const fs = require('fs');
  try {
    const data = fs.readFileSync(file, 'utf8');
    const json = JSON.parse(data);
    const list = (json.modules || []).filter(m => {
      if (!fs.existsSync(m.file)) {
        console.warn(`Warnung: Moduldatei fehlt: ${m.file}`);
        return false;
      }
      return true;
    });
    return Promise.resolve(list);
  } catch (e) {
    return Promise.resolve([]);
  }
}
