export class App {
  constructor() {
    this.modules = [];
  }

  register(mod) {
    this.modules.push(mod);
  }

  async init() {
    for (const m of this.modules) {
      if (m.init) {
        await m.init();
      }
    }
  init() {
    this.modules.forEach(m => m.init && m.init());
  }
}
