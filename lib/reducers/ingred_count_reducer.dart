import 'package:redux/redux.dart';
import 'package:skyrim_alchemy/actions.dart';
import 'package:skyrim_alchemy/alchemy/common.dart';
import 'package:skyrim_alchemy/alchemy/ingredients.dart';
import 'dart:math' show max;

final ingredCountReducer = combineTypedReducers<Map<Ingredient, int>>([
  new ReducerBinding<Map<Ingredient, int>, IncIngredAction>(_inc),
  new ReducerBinding<Map<Ingredient, int>, DecIngredAction>(_dec),
  new ReducerBinding<Map<Ingredient, int>, InitCountsAction>(_init),
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

Map<Ingredient, int> _init(Map<Ingredient, int> state, InitCountsAction action) {
  var map = new Map();
  for (var ingredient in allIngredients) {
    map[ingredient] = 0;
  }
  return map;
}