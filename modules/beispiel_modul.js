// beispiel_modul.js - ausführlicher Beispielcode
// Dieses Modul erstellt eine kleine Begrüßung auf der Webseite.
// "export" macht die Funktion außerhalb nutzbar.

export function begruessung() {
  const name = prompt('Wie heißt du?'); // "prompt" fragt nach Eingabe
  const text = document.createElement('p'); // <p>-Element erzeugen
  text.textContent = `Hallo ${name || 'Welt'}!`;
  document.body.appendChild(text); // Text im Dokument anzeigen
}
