import 'package:redux/redux.dart';
import 'package:skyrim_alchemy/actions.dart';
import 'package:skyrim_alchemy/alchemy/common.dart';
import 'package:skyrim_alchemy/alchemy/ingredients.dart';
import 'dart:math' show max;

final ingredCountReducer = combineTypedReducers<Map<Ingredient, int>>([
  new ReducerBinding<Map<Ingredient, int>, IncIngredAction>(_inc),
  new ReducerBinding<Map<Ingredient, int>, DecIngredAction>(_dec),
  new ReducerBinding<Map<Ingredient, int>, InitCountsAction>(_init),
  new ReducerBinding<Map<Ingredient, int>, DecMultIngredAction>(_decMult),
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

Map<Ingredient, int> _decMult(Map<Ingredient, int> state, DecMultIngredAction action) {
  var copy = new Map<Ingredient, int>.from(state);
  for (var ingredient in action.ingredients) {
    copy[ingredient] = max(0, copy[ingredient] - 1);
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