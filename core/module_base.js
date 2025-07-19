/**
 * Basis-Klasse für alle Module.
 */
export default class ModuleBase {
  constructor(id, title) {
    this.id = id;
    this.title = title;
  }

  /** Initialisierung beim Laden */
  init() {}

  /** Daten speichern */
  save() {}

  /** Daten laden */
  load() {}
}
