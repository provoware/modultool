import assert from 'assert';
import { LocalStorage } from 'node-localstorage';
import { saveJSON, loadJSON, deleteJSON } from '../modules/common.js';

global.localStorage = new LocalStorage('./scratch');

describe('common.js helpers', function() {
  afterEach(() => {
    localStorage.clear();
  });

  it('saves and loads JSON data', function() {
    const obj = { a: 1 };
    const ok = saveJSON('key', obj);
    assert.strictEqual(ok, true);
    const loaded = loadJSON('key');
    assert.deepStrictEqual(loaded, obj);
  });

  it('deletes stored data', function() {
    saveJSON('key', { a: 2 });
    const delOk = deleteJSON('key');
    assert.strictEqual(delOk, true);
    const result = loadJSON('key');
    assert.strictEqual(result, null);
  });
});
