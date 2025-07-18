export function isValidDate(str) {
  return /^\d{4}-\d{2}-\d{2}$/.test(str) && !Number.isNaN(new Date(str).getTime());
}

export function isNonEmpty(str) {
  return typeof str === 'string' && str.trim().length > 0;
}

export function hasLocalStorage() {
  try {
    const test = '__ls_test__';
    localStorage.setItem(test, test);
    localStorage.removeItem(test);
    return true;
  } catch (e) {
    console.warn('LocalStorage nicht verf\u00fcgbar', e);
    return false;
  }
}

export function isValidJSON(str) {
  if (typeof str !== 'string') return false;
  try {
    JSON.parse(str);
    return true;
  } catch {
    return false;
  }
}

export function loadJSON(key, fallback = []) {
  if (!hasLocalStorage()) return fallback;
  try {
    const data = localStorage.getItem(key);
    if (data && !isValidJSON(data)) {
      console.warn('Ung\u00fcltiges JSON in', key);
      return fallback;
    }
    return data ? JSON.parse(data) : fallback;
  } catch (e) {
    console.warn('Fehler beim Lesen von', key, e);
    return fallback;
  }
}

export function saveJSON(key, data) {
  if (!hasLocalStorage()) return false;
  try {
    localStorage.setItem(key, JSON.stringify(data));
    return true;
  } catch (e) {
    console.warn('Fehler beim Speichern von', key, e);
    return false;
  }
}
