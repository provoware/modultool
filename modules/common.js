export function showStatus(el, msg, timeout = 3000) {
  if (!el) return;
  el.textContent = msg;
  setTimeout(() => { el.textContent = ''; }, timeout);
}

export function addDashboard(value, key = 'dashboardLog') {
  try {
    const arr = JSON.parse(localStorage.getItem(key) || '[]');
    arr.unshift({ time: new Date().toLocaleString(), value });
    if (arr.length > 10) arr.length = 10;
    localStorage.setItem(key, JSON.stringify(arr));
  } catch (e) {
    console.warn('Dashboard-Log konnte nicht gespeichert werden', e);
  }
}

// Daten als JSON im LocalStorage sichern
export function saveJSON(key, data) {
  try {
    localStorage.setItem(key, JSON.stringify(data));
    return true;
  } catch (e) {
    console.warn('Speichern fehlgeschlagen', e);
    return false;
  }
}

// Daten aus dem LocalStorage laden
export function loadJSON(key, fallback = null) {
  try {
    const text = localStorage.getItem(key);
    return text ? JSON.parse(text) : fallback;
  } catch (e) {
    console.warn('Laden fehlgeschlagen', e);
    return fallback;
  }
}

// Daten aus dem LocalStorage entfernen
export function deleteJSON(key) {
  try {
    localStorage.removeItem(key);
    return true;
  } catch (e) {
    console.warn('Löschen fehlgeschlagen', e);
    return false;
  }
}
