import 'package:redux/redux.dart';
import 'package:skyrim_alchemy/actions.dart';
import 'package:skyrim_alchemy/alchemy/common.dart';
import 'package:skyrim_alchemy/alchemy/ingredients.dart';

final ingredCountReducer = combineTypedReducers<Map<Ingredient, int>>([
  new ReducerBinding<Map<Ingredient, int>, IncIngredAction>(_incIngred),
  new ReducerBinding<Map<Ingredient, int>, DecIngredAction>(_decIngred),
  new ReducerBinding<Map<Ingredient, int>, InitCountsAction>(_initCounts),
]);

Map<Ingredient, int> _incIngred(Map<Ingredient, int> state, IncIngredAction action) {
  // TODO
  return state;
}

Map<Ingredient, int> _decIngred(Map<Ingredient, int> state, DecIngredAction action) {
  // TODO
  return state;
}

Map<Ingredient, int> _initCounts(Map<Ingredient, int> state, InitCountsAction action) {
  var map = new Map();
  for (var ingredient in allIngredients) {
    map[ingredient] = 0;
  }
  return map;
}