#!/usr/bin/env node
import fs from 'fs';
import path from 'path';

interface ModuleEntry { id: string; title: string; file: string; }
interface ModulesFile { modules: ModuleEntry[]; }

function validate(data: any): data is ModulesFile {
  return !!data && Array.isArray(data.modules) && data.modules.every((m: any) =>
    typeof m.id === 'string' && typeof m.title === 'string' && typeof m.file === 'string');
}

function createModule(id: string, title: string): void {
  const template = path.join('modules', 'panel_template.html');
  const target = path.join('modules', `${id}.html`);
  const modulesFile = 'modules.json';

  if (!fs.existsSync(template)) {
    console.error(`Template ${template} not found.`);
    process.exit(1);
  }
  if (fs.existsSync(target)) {
    console.error(`File ${target} already exists.`);
    process.exit(1);
  }

  let content = fs.readFileSync(template, 'utf8');
  content = content.replace(/{{ID}}/g, id).replace(/{{TITLE}}/g, title);
  fs.writeFileSync(target, content);

  try {
    const json = JSON.parse(fs.readFileSync(modulesFile, 'utf8'));
    if (validate(json)) {
      json.modules.push({ id, title, file: `modules/${id}.html` });
      fs.writeFileSync(modulesFile, JSON.stringify(json, null, 2));
      console.log('modules.json updated.');
    } else {
      console.log('Unexpected modules.json format. Please update manually.');
    }
  } catch (e: any) {
    console.log('Cannot update modules.json:', e.message);
  }

  console.log(`Module ${id} created at ${target}.`);
}

if (require.main === module) {
  const [, , moduleId, ...titleParts] = process.argv;
  if (!moduleId || titleParts.length === 0) {
    console.log('Usage: node tools/create_module.js modul_id "Titel des Moduls"');
    process.exit(1);
  }
  createModule(moduleId, titleParts.join(' '));
}
export { createModule };
