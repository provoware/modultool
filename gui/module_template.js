import ModuleBase from '../core/module_base.js';

export default class ModuleTemplate extends ModuleBase {
  constructor(id, title, file) {
    super(id, title);
    this.file = file;
    this.content = '';
  }

  async load() {
    try {
      const resp = await fetch(this.file);
      this.content = await resp.text();
    } catch (e) {
      this.content = `<p>Fehler beim Laden: ${this.file}</p>`;
    }
  constructor(id, title) {
    super(id, title);
  }

  render() {
    const div = document.createElement('div');
    div.innerHTML = this.content || this.title;
    div.textContent = this.title;
    return div;
  }
}
