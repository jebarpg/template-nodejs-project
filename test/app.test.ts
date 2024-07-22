import sum from '../src/app';

describe('Sum', () => {
  test('sum two numbers', () => {
    expect(sum(1, 1)).toEqual(2);
  });
});
