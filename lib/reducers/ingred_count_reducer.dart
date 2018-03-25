import 'dart:math' show max;
import 'package:redux/redux.dart';
import 'package:skyrim_alchemy/actions.dart';
import 'package:skyrim_alchemy/alchemy/common.dart';
import 'package:skyrim_alchemy/alchemy/ingredients.dart';

final ingredCountReducer = combineTypedReducers<Map<Ingredient, int>>([
  new ReducerBinding<Map<Ingredient, int>, IncIngredAction>(_inc),
  new ReducerBinding<Map<Ingredient, int>, DecIngredAction>(_dec),
  new ReducerBinding<Map<Ingredient, int>, InitCountsAction>(_init),
  new ReducerBinding<Map<Ingredient, int>, BrewNPotionsAction>(_brewNPotions),
  new ReducerBinding<Map<Ingredient, int>, SetIngredCountAction>(_setCount),
]);

Map<Ingredient, int> _inc(Map<Ingredient, int> state, IncIngredAction action) {
  var copy = new Map<Ingredient, int>.from(state);
  copy[action.ingredient] = copy[action.ingredient] + 1;
  return copy;
}

Map<Ingredient, int> _dec(Map<Ingredient, int> state, DecIngredAction action) {
  var copy = new Map<Ingredient, int>.from(state);
  copy[action.ingredient] = max(0, copy[action.ingredient] - 1);
  return copy;
}

Map<Ingredient, int> _brewNPotions(Map<Ingredient, int> state, BrewNPotionsAction action) {
  // We can brew as many potions as we have count of the least plentiful
  // ingredient. Sort by count, so the least plentiful will be the first.
  final ingredients = action.potion.ingredients.toList();
  ingredients.sort((a, b) => state[a].compareTo(state[b]));
  final leastPlentiful = ingredients[0];
  final times = state[leastPlentiful];

  var copy = new Map<Ingredient, int>.from(state);
  for (var ingredient in action.potion.ingredients) {
    copy[ingredient] = max(0, copy[ingredient] - times);
  }
  return copy;
}

Map<Ingredient, int> _setCount(Map<Ingredient, int> state, SetIngredCountAction action) {
  assert(action.count != null);
  var copy = new Map<Ingredient, int>.from(state);
  copy[action.ingredient] = action.count;
  return copy;
}

Map<Ingredient, int> _init(Map<Ingredient, int> state, InitCountsAction action) {
  var map = new Map();
  for (var ingredient in allIngredients) {
    map[ingredient] = 0;
  }
  return map;
}