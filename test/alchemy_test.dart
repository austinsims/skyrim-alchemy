import 'package:skyrim_alchemy/alchemy/alchemy.dart';
import 'package:skyrim_alchemy/alchemy/ingredients.dart';
import "package:test/test.dart";

var THREE_POTION_24 =
    new Potion(new Set.from([bee, beritsAshes, bleedingCrown]));
var TWO_POTION_118 = new Potion(new Set.from([abeceanLongfin, ashenGrassPod]));
var THREE_POTION_118 =
    new Potion(new Set.from([abeceanLongfin, bearClaws, beehiveHusk]));
var TWO_POTION_265 = new Potion(new Set.from([ancestorMothWing, bearClaws]));
var THREE_POTION_265 =
    new Potion(new Set.from([abeceanLongfin, ancestorMothWing, bearClaws]));

void main() {
  test("sorts empty list", () {
    var potions = [];
    sortPotions(potions);
    expect(potions, equals([]));
  });

  test("only one potion", () {
    var potions = [THREE_POTION_118];
    sortPotions(potions);
    expect(potions, equals([THREE_POTION_118]));
  });

  test("different gold values", () {
    var potions = [
      THREE_POTION_118,
      THREE_POTION_265,
      THREE_POTION_24,
    ];
    var sorted = [
      THREE_POTION_24,
      THREE_POTION_118,
      THREE_POTION_265,
    ];
    sortPotions(potions);
    expect(potions, equals(sorted));
  });

  test("equal gold values and varying ingredient count", () {
    var potions = [
      THREE_POTION_24,
      THREE_POTION_118,
      TWO_POTION_118,
    ];
    var sorted = [
      THREE_POTION_24,
      THREE_POTION_118,
      TWO_POTION_118,
    ];
    expect(potions, equals(sorted));
  });
}
