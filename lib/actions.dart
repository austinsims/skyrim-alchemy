import 'package:skyrim_alchemy/alchemy/alchemy.dart';
import 'package:skyrim_alchemy/alchemy/common.dart';

class IncIngredAction {
  final Ingredient ingredient;
  IncIngredAction(this.ingredient);
}

class DecIngredAction {
  final Ingredient ingredient;
  DecIngredAction(this.ingredient);
}

class DecMultIngredAction {
  final Iterable<Ingredient> ingredients;
  DecMultIngredAction(this.ingredients);
}

class SetIngredCountAction {
  final Ingredient ingredient;
  final int count;
  SetIngredCountAction(this.ingredient, this.count);
}

class InitCountsAction {}

class SetPotionsAction {
  final List<Potion> potions;
  SetPotionsAction(this.potions);
}

class StartLoadingAction {}

class StopLoadingAction {}