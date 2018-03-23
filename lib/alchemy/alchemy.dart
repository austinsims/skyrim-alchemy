import 'common.dart';
import 'subsets.dart' show subsetsOfSize;

num sum(Iterable<num> numbers) {
  var v = 0;
  for (num n in numbers) v += n;
  return v;
}

class Potion {
  Set<Ingredient> ingredients;
  Potion(this.ingredients);

  Set<Effect> effects() {
    var allIngredientEffects = new Set.identity();
    for (var ingredient in ingredients) {
      allIngredientEffects = allIngredientEffects.union(ingredient.effects);
    }

    var effects = new Set.identity();
    for (var effect in allIngredientEffects) {
      var ingredientsWithEffect =
          ingredients.where((i) => i.effects.contains(effect)).length;
      if (ingredientsWithEffect >= 2) {
        effects.add(effect);
      }
    }

    return new Set.from(effects);
  }

  num value() => sum(effects().map((e) => e.value));

  toString() {
    num val = value();
    String desc = effects().isEmpty
        ? "Nothing"
        : effects().map((e) => e.toString()).join(", ");
    String ingredList = ingredients.join(", ");
    return "\$$val potion of $desc made with $ingredList";
  }
}

List<Potion> findPotions(List<Ingredient> ingredients) {
  var subsets = subsetsOfSize(ingredients, 2)
    ..addAll(subsetsOfSize(ingredients, 3));

  var potions = subsets
      .map((list) => new Potion(new Set.from(list)))
      .where((potion) => potion.value() > 0)
      .toList();
  
  sortPotions(potions);

  return potions;
}

void sortPotions(List<Potion> potions) {
  potions.sort((a, b) {
    if (a.value() > b.value()) {
      return -1;
    } else if (b.value() > a.value()) {
      return 1;
    } else if (a.ingredients.length < b.ingredients.length) {
      return -11;
    } else if (b.ingredients.length < a.ingredients.length) {
      return 1;
    }
    return 0;
  });
}