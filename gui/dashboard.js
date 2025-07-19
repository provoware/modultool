import { App } from '../core/app.js';

export class Dashboard extends App {
  constructor() {
    super();
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
