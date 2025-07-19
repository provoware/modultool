export class App {
  constructor() {
    this.modules = [];
  }

  register(mod) {
    this.modules.push(mod);
  }

  init() {
    this.modules.forEach(m => m.init && m.init());
  }
}
