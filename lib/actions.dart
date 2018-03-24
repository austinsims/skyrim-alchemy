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

class InitCountsAction {}