import 'package:skyrim_alchemy/alchemy/alchemy.dart';
import 'package:skyrim_alchemy/alchemy/ingredients.dart';
import "package:test/test.dart";

// Potions with a specific value.
var THREE_POTION_24 =
    new Potion(new Set.from([bee, beritsAshes, bleedingCrown]));
var TWO_POTION_118 = new Potion(new Set.from([abeceanLongfin, ashenGrassPod]));
var THREE_POTION_118 =
    new Potion(new Set.from([abeceanLongfin, bearClaws, beehiveHusk]));
var TWO_POTION_265 = new Potion(new Set.from([ancestorMothWing, bearClaws]));
var THREE_POTION_265 =
    new Potion(new Set.from([abeceanLongfin, ancestorMothWing, bearClaws]));

// Potions with a specific ingredient count.
var THREE_POTION_A = new Potion(new Set.from([
  ancestorMothWing,
  bearClaws,
  bee,
]));
var THREE_POTION_B = new Potion(new Set.from([
  abeceanLongfin,
  ancestorMothWing,
  bearClaws,
]));
var THREE_POTION_C = new Potion(new Set.from([
  ancestorMothWing,
  bearClaws,
  beehiveHusk,
]));
var THREE_POTION_D = new Potion(new Set.from([
  abeceanLongfin,
  ancestorMothWing,
  beehiveHusk,
]));
var THREE_POTION_E = new Potion(new Set.from([
  abeceanLongfin,
  bearClaws,
  beehiveHusk,
]));
var THREE_POTION_F = new Potion(new Set.from([
  abeceanLongfin,
  bee,
  beehiveHusk,
]));
var THREE_POTION_G = new Potion(new Set.from([
  abeceanLongfin,
  bearClaws,
  bee,
]));
var THREE_POTION_H = new Potion(new Set.from([
  bearClaws,
  bee,
  beehiveHusk,
]));

var TWO_POTION_A = new Potion(new Set.from([
  ancestorMothWing,
  bearClaws,
]));
var TWO_POTION_B = new Potion(new Set.from([
  abeceanLongfin,
  beehiveHusk,
]));
var TWO_POTION_C = new Potion(new Set.from([
  bearClaws,
  bee,
]));

void main() {
  test("sorts empty list", () {
    var potions = [];
    sortPotions(potions);
    expect(potions, equals([]));
  });

  test("sorts only one potion", () {
    var potions = [THREE_POTION_118];
    sortPotions(potions);
    expect(potions, equals([THREE_POTION_118]));
  });

  test("potion valuation works correctly", () {
    expect(THREE_POTION_24.value(), equals(24));
    expect(TWO_POTION_118.value(), equals(118));
    expect(THREE_POTION_118.value(), equals(118));
    expect(TWO_POTION_265.value(), equals(265));
    expect(THREE_POTION_265.value(), equals(265));
  });

  test("sorts potions of different gold values", () {
    var potions = [
      THREE_POTION_118,
      THREE_POTION_265,
      THREE_POTION_24,
    ];
    var sorted = [
      THREE_POTION_265,
      THREE_POTION_118,
      THREE_POTION_24,
    ];
    sortPotions(potions);
    expect(potions, equals(sorted));
  });

  test("sorts potions of equal gold value and varying ingredient count", () {
    var potions = [
      THREE_POTION_24,
      THREE_POTION_118,
      TWO_POTION_118,
    ];
    var sorted = [
      TWO_POTION_118,
      THREE_POTION_118,
      THREE_POTION_24,
    ];
    sortPotions(potions);
    expect(potions, equals(sorted));
  });

  test("potion valuation accounts for effect multipliers", () {
    var potion = new Potion(new Set.from([
      bearClaws,
      giantsToe,
      nirnroot,
    ]));
    expect(potion.value(), equals(526.8));
  });

  test("potion equality operator positive case", () {
    var p1 = new Potion(new Set.from([ancestorMothWing, bearClaws, bee]));
    var p2 = new Potion(new Set.from([ancestorMothWing, bearClaws, bee]));
    expect(p1 == p2, isTrue);
  });

  test("potion equality operator negative case", () {
    var p1 = new Potion(new Set.from([ancestorMothWing, bearClaws, bee]));
    var p2 = new Potion(new Set.from([abeceanLongfin, ancestorMothWing, beehiveHusk]));
    expect(p1 == p2, isFalse);
  });

  test("two ingredient potions are found", () {
    var ingredients = [abeceanLongfin, ancestorMothWing, bearClaws, bee, beehiveHusk];
    var potions = findPotions(ingredients);
    expect(potions, contains(TWO_POTION_A));
    expect(potions, contains(TWO_POTION_B));
    expect(potions, contains(TWO_POTION_C));
  });

  test("all potions are found", () {
    var ingredients = [abeceanLongfin, ancestorMothWing, bearClaws, bee, beehiveHusk];
    var potions = findPotions(ingredients);
    expect(potions, hasLength(11));
    expect(potions, contains(THREE_POTION_A));
    expect(potions, contains(THREE_POTION_B));
    expect(potions, contains(THREE_POTION_C));
    expect(potions, contains(THREE_POTION_D));
    expect(potions, contains(THREE_POTION_E));
    expect(potions, contains(THREE_POTION_F));
    expect(potions, contains(THREE_POTION_G));
    expect(potions, contains(THREE_POTION_H));
    expect(potions, contains(TWO_POTION_A));
    expect(potions, contains(TWO_POTION_B));
    expect(potions, contains(TWO_POTION_C));
  });
}
