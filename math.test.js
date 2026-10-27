const { add } = require('./math');

describe('add', () => {
  test('adds two positive numbers', () => {
    expect(add(2, 3)).toBe(5);
  });

  test('adds negative numbers', () => {
    expect(add(-1, -4)).toBe(-5);
  });

  test('adds zero', () => {
    expect(add(0, 7)).toBe(7);
  });
});
