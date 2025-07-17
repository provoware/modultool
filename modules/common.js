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
