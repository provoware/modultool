module.exports = {
  extends: ['@commitlint/config-conventional'],
  // Beispiel-Regel: Betreff nie in PascalCase oder UPPER
  rules: { 'subject-case': [2, 'never', ['pascal-case', 'upper-case']] },
};
