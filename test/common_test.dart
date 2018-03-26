import 'package:skyrim_alchemy/alchemy/common.dart';
import 'package:skyrim_alchemy/alchemy/effects.dart';
import 'package:test/test.dart';

void main() {
  test('effects inequal when totally different', () {
    var e1 = new Effect('Headache', 4);
    var e2 = new Effect('Sore', 9);
    expect(e1 == e2, isFalse);
    expect(e2 == e1, isFalse);
  });

  test('effects inequal when same name but different value', () {
    var e1 = new Effect('Headache', 4);
    var e2 = new Effect('Headache', 9);
    expect(e1 == e2, isFalse);
    expect(e2 == e1, isFalse);
  });

  test('effects inequal when different name but same value', () {
    var e1 = new Effect('Headache', 9);
    var e2 = new Effect('Sore', 9);
    expect(e1 == e2, isFalse);
    expect(e2 == e1, isFalse);
  });

  test('effects equal when same name and value', () {
    var e1 = new Effect('Headache', 9);
    var e2 = new Effect('Headache', 9);
    expect(e1 == e2, isTrue);
    expect(e2 == e1, isTrue);
  });

  test('ingredients inequal when totally different', () {
    var i1 = new Ingredient(
        name: 'Tentacle',
        effects: new Set.from([cureDisease, damageHealth]),
        multipliers: {cureDisease: 2.5},
        value: 17);
    var i2 = new Ingredient(
        name: 'Fart',
        effects: new Set.from([frenzy, fear]),
        multipliers: {fear: 0.9},
        value: 22);
    expect(i1 == i2, isFalse);
    expect(i2 == i1, isFalse);
  });

  test('ingredients equal with everything the same', () {
    var i1 = new Ingredient(
        name: 'Tentacle',
        effects: new Set.from([cureDisease, damageHealth]),
        multipliers: {cureDisease: 2.5},
        value: 10);
    var i2 = new Ingredient(
        name: 'Tentacle',
        effects: new Set.from([cureDisease, damageHealth]),
        multipliers: {cureDisease: 2.5},
        value: 10);
    expect(i1 == i2, isTrue);
    expect(i2 == i1, isTrue);
  });
}