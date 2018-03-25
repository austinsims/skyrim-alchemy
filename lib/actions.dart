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

/// Brews N potions where N is as many as we can given the current ingredients.
/// Decrements the ingredients.
class BrewNPotionsAction {
  final Potion potion;
  BrewNPotionsAction(this.potion);
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