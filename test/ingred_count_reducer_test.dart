import 'package:built_collection/built_collection.dart';
import 'package:skyrim_alchemy/actions.dart';
import 'package:skyrim_alchemy/alchemy/alchemy.dart';
import 'package:skyrim_alchemy/alchemy/common.dart';
import 'package:skyrim_alchemy/alchemy/ingredients.dart';
import 'package:skyrim_alchemy/reducers/ingred_count_reducer.dart';
import 'package:test/test.dart';

BuiltMap<Ingredient, int> bm([Map<Ingredient, int> m]) {
  return new BuiltMap<Ingredient, int>(m ?? <Ingredient, int>{});
}

main() {
  test('increments', () {
    final state = bm({abeceanLongfin: 0, bee: 0});
    final action = new IncIngredAction(abeceanLongfin);
    final expected = bm({abeceanLongfin: 1, bee: 0});
    expect(ingredCountReducer(state, action), equals(expected));
  });

  test('decrements', () {
    final state = bm({abeceanLongfin: 1, bee: 0});
    final action = new DecIngredAction(abeceanLongfin);
    final expected = bm({abeceanLongfin: 0, bee: 0});
    expect(ingredCountReducer(state, action), equals(expected));
  });

  test('decrement floors at zero', () {
    final state = bm({abeceanLongfin: 0, bee: 0});
    final action = new DecIngredAction(abeceanLongfin);
    expect(ingredCountReducer(state, action), equals(state));
  });

  test('brews N potions', () {
    final state = bm({ancestorMothWing: 3, ashCreepCluster: 2, bearClaws: 3});
    final action = new BrewNPotionsAction(
        new Potion([ancestorMothWing, ashCreepCluster, bearClaws]));
    final expected = bm({ancestorMothWing: 1, ashCreepCluster: 0, bearClaws: 1});
    expect(ingredCountReducer(state, action), equals(expected));
  });

  test('sets count', () {
    final state = bm({abeceanLongfin: 5, bee: 6});
    final action = new SetIngredCountAction(bee, 9);
    final expected = bm({abeceanLongfin: 5, bee: 9});
    expect(ingredCountReducer(state, action), equals(expected));
  });

  test('initializes everything to zero', () {
    final state = bm();
    final action = new InitCountsAction();
    final actual = ingredCountReducer(state, action);
    for (final ingredient in allIngredients) {
      expect(actual[ingredient], isZero);
    }
  });
}
