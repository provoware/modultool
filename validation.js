export function isValidDate(str){
  return /^\d{4}-\d{2}-\d{2}$/.test(str) && !Number.isNaN(new Date(str).getTime());
}
export function isNonEmpty(str){
  return typeof str==='string' && str.trim().length>0;
}
export function loadJSON(key,fallback=[]){
  try{
    const data=localStorage.getItem(key);
    return data?JSON.parse(data):fallback;
  }catch(e){
    console.warn('Fehler beim Lesen von',key,e);
    return fallback;
  }
}
export function saveJSON(key,data){
  try{
    localStorage.setItem(key,JSON.stringify(data));
    return true;
  }catch(e){
    console.warn('Fehler beim Speichern von',key,e);
    return false;
  }
}
