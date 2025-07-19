import { App } from '../core/app.js';
import { loadModuleList } from '../core/module_loader.js';
import ModuleTemplate from './module_template.js';

export class Dashboard extends App {
  constructor() {
    super();
  }

  async init() {
    const list = await loadModuleList();
    for (const m of list) {
      const mod = new ModuleTemplate(m.id, m.title, m.file);
      await mod.load();
      this.register(mod);
    }
    super.init();
  }

  render(target) {
    target.innerHTML = '';
    this.modules.forEach(mod => {
      const section = document.createElement('section');
      section.id = mod.id;
      section.appendChild(mod.render());
      target.appendChild(section);
    });
  }
}
