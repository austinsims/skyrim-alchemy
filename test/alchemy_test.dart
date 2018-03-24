import 'package:skyrim_alchemy/alchemy/alchemy.dart';
import 'package:skyrim_alchemy/alchemy/ingredients.dart';
import 'package:test/test.dart';

// Potions with a specific value.
final threePotion24 = new Potion([bee, beritsAshes, bleedingCrown]);
final twoPotion118 = new Potion(new Set.from([abeceanLongfin, ashenGrassPod]));
final threePotion118 =
    new Potion(new Set.from([abeceanLongfin, bearClaws, beehiveHusk]));
final twoPotion265 = new Potion(new Set.from([ancestorMothWing, bearClaws]));
final threePotion265 =
    new Potion(new Set.from([abeceanLongfin, ancestorMothWing, bearClaws]));

// Potions with a specific ingredient count.
final twoPotionA = new Potion([bee, charredSkeeverHide]);
final twoPotionB = new Potion([bearClaws, charredSkeeverHide]);
final twoPotionC = new Potion([bearClaws, bee]);
final twoPotionD = new Potion([beehiveHusk, charredSkeeverHide]);
final twoPotionE = new Potion([abeceanLongfin, beehiveHusk]);
final threePotionA = new Potion([bee, beehiveHusk, charredSkeeverHide]);
final threePotionB = new Potion([bearClaws, beehiveHusk, charredSkeeverHide]);
final threePotionC =
    new Potion([abeceanLongfin, beehiveHusk, charredSkeeverHide]);
final threePotionD = new Potion([bearClaws, bee, charredSkeeverHide]);

void main() {
  test("sorts empty list", () {
    var potions = [];
    sortPotions(potions);
    expect(potions, equals([]));
  });

  test("sorts only one potion", () {
    var potions = [threePotion118];
    sortPotions(potions);
    expect(potions, equals([threePotion118]));
  });

  test("potion valuation works correctly", () {
    expect(threePotion24.value(), equals(24));
    expect(twoPotion118.value(), equals(118));
    expect(threePotion118.value(), equals(118));
    expect(twoPotion265.value(), equals(265));
    expect(threePotion265.value(), equals(265));
  });

  test("sorts potions of different gold values", () {
    var potions = [
      threePotion118,
      threePotion265,
      threePotion24,
    ];
    var sorted = [
      threePotion265,
      threePotion118,
      threePotion24,
    ];
    sortPotions(potions);
    expect(potions, equals(sorted));
  });

  test("sorts potions of equal gold value and varying ingredient count", () {
    var potions = [
      threePotion24,
      threePotion118,
      twoPotion118,
    ];
    var sorted = [
      twoPotion118,
      threePotion118,
      threePotion24,
    ];
    sortPotions(potions);
    expect(potions, equals(sorted));
  });

  test("potion valuation accounts for effect multipliers", () {
    var potion = new Potion([
      bearClaws,
      giantsToe,
      nirnroot,
    ]);
    expect(potion.value(), equals(526.8));
  });

  test("potion equality operator positive case", () {
    var p1 = new Potion([ancestorMothWing, bearClaws, bee]);
    var p2 = new Potion([ancestorMothWing, bearClaws, bee]);
    expect(p1 == p2, isTrue);
    expect(p2 == p1, isTrue);
  });

  test("potion equality negative case with different ingredients", () {
    var p1 = new Potion([ancestorMothWing, bearClaws, bee]);
    var p2 = new Potion(
        new Set.from([abeceanLongfin, ancestorMothWing, beehiveHusk]));
    expect(p1 == p2, isFalse);
    expect(p2 == p1, isFalse);
  });

  test("potion equality negative case with some common ingredients", () {
    var p1 = new Potion([ancestorMothWing, bearClaws, bee]);
    var p2 = new Potion([ancestorMothWing, bearClaws]);
    expect(p1 == p2, isFalse);
    expect(p2 == p1, isFalse);
  });

  test("two ingredient potions are found", () {
    var ingredients = [
      abeceanLongfin,
      bearClaws,
      bee,
      beehiveHusk,
      charredSkeeverHide
    ];
    var potions = findPotions(ingredients);
    expect(potions, contains(twoPotionA));
    expect(potions, contains(twoPotionB));
    expect(potions, contains(twoPotionC));
    expect(potions, contains(twoPotionD));
    expect(potions, contains(twoPotionE));
  });

  test("all potions are found", () {
    var ingredients = [
      abeceanLongfin,
      bearClaws,
      bee,
      beehiveHusk,
      charredSkeeverHide
    ];
    final potions = findPotions(ingredients);
    expect(potions, contains(twoPotionA));
    expect(potions, contains(twoPotionB));
    expect(potions, contains(twoPotionC));
    expect(potions, contains(twoPotionD));
    expect(potions, contains(twoPotionE));
    expect(potions, contains(threePotionA));
    expect(potions, contains(threePotionB));
    expect(potions, contains(threePotionC));
    expect(potions, contains(threePotionD));
    final expected = [twoPotionA, twoPotionB, twoPotionC, twoPotionD, twoPotionE, threePotionA, threePotionB, threePotionC, threePotionD];
    final unexpected = potions.where((p) => !expected.contains(p));
    expect(unexpected, isEmpty);
  });
}
