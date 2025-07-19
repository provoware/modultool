import ModuleBase from '../core/module_base.js';

export default class ModuleTemplate extends ModuleBase {
  constructor(id, title) {
    super(id, title);
  }

  render() {
    const div = document.createElement('div');
    div.textContent = this.title;
    return div;
  }
}
