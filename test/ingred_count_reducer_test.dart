import 'package:skyrim_alchemy/actions.dart';
import 'package:skyrim_alchemy/alchemy/alchemy.dart';
import 'package:skyrim_alchemy/alchemy/ingredients.dart';
import 'package:skyrim_alchemy/reducers/ingred_count_reducer.dart';
import 'package:test/test.dart';

main() {
  test('increments', () {
    final state = {abeceanLongfin: 0, bee: 0};
    final action = new IncIngredAction(abeceanLongfin);
    final expected = {abeceanLongfin: 1, bee: 0};
    expect(ingredCountReducer(state, action), equals(expected));
  });

  test('decrements', () {
    final state = {abeceanLongfin: 1, bee: 0};
    final action = new DecIngredAction(abeceanLongfin);
    final expected = {abeceanLongfin: 0, bee: 0};
    expect(ingredCountReducer(state, action), equals(expected));
  });

  test('decrement floors at zero', () {
    final state = {abeceanLongfin: 0, bee: 0};
    final action = new DecIngredAction(abeceanLongfin);
    expect(ingredCountReducer(state, action), equals(state));
  });

  test('brews N potions', () {
    final state = {ancestorMothWing: 3, ashCreepCluster: 2, bearClaws: 3};
    final action = new BrewNPotionsAction(
        new Potion([ancestorMothWing, ashCreepCluster, bearClaws]));
    final expected = {ancestorMothWing: 1, ashCreepCluster: 0, bearClaws: 1};
    expect(ingredCountReducer(state, action), equals(expected));
  });

  test('sets count', () {
    final state = {abeceanLongfin: 5, bee: 6};
    final action = new SetIngredCountAction(bee, 9);
    final expected = {abeceanLongfin: 5, bee: 9};
    expect(ingredCountReducer(state, action), equals(expected));
  });

  test('initializes everything to zero', () {
    final state = {};
    final action = new InitCountsAction();
    final actual = ingredCountReducer(state, action);
    for (final ingredient in allIngredients) {
      expect(actual[ingredient], isZero);
    }
  });
}
