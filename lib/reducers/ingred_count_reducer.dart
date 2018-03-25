import 'dart:math' show max;
import 'package:built_collection/built_collection.dart';
import 'package:redux/redux.dart';
import 'package:skyrim_alchemy/actions.dart';
import 'package:skyrim_alchemy/alchemy/common.dart';
import 'package:skyrim_alchemy/alchemy/ingredients.dart';

final ingredCountReducer = combineTypedReducers<BuiltMap<Ingredient, int>>([
  new ReducerBinding<BuiltMap<Ingredient, int>, IncIngredAction>(_inc),
  new ReducerBinding<BuiltMap<Ingredient, int>, DecIngredAction>(_dec),
  new ReducerBinding<BuiltMap<Ingredient, int>, InitCountsAction>(_init),
  new ReducerBinding<BuiltMap<Ingredient, int>, BrewNPotionsAction>(_brewNPotions),
  new ReducerBinding<BuiltMap<Ingredient, int>, SetIngredCountAction>(_setCount),
]);

BuiltMap<Ingredient, int> _inc(BuiltMap<Ingredient, int> state, IncIngredAction action) {
  return state.rebuild((s) => s[action.ingredient]++);
}

BuiltMap<Ingredient, int> _dec(BuiltMap<Ingredient, int> state, DecIngredAction action) {
  return state.rebuild((s) =>
      s[action.ingredient] = max(0, s[action.ingredient] - 1));
}

BuiltMap<Ingredient, int> _brewNPotions(BuiltMap<Ingredient, int> state, BrewNPotionsAction action) {
  // We can brew as many potions as we have count of the least plentiful
  // ingredient. Sort by count, so the least plentiful will be the first.
  final ingredients = action.potion.ingredients.toList();
  ingredients.sort((a, b) => state[a].compareTo(state[b]));
  final leastPlentiful = ingredients[0];
  final times = state[leastPlentiful];

  return state.rebuild((s) {
    for (var ingredient in action.potion.ingredients) {
      s[ingredient] = max(0, s[ingredient] - times);
    }
    return s;
  });
}

BuiltMap<Ingredient, int> _setCount(BuiltMap<Ingredient, int> state, SetIngredCountAction action) {
  assert(action.count != null);
  return state.rebuild((s) => s[action.ingredient] = action.count);
}

BuiltMap<Ingredient, int> _init(BuiltMap<Ingredient, int> state, InitCountsAction action) {
  var builder = new MapBuilder<Ingredient, int>();
  for (var ingredient in allIngredients) {
    builder[ingredient] = 0;
  }
  return builder.build();
}