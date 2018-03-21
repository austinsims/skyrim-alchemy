import 'common.dart';
import 'ingredients.dart';
import 'subsets.dart' show subsets2or3;

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
    return "\$${val} potion of ${desc} made with ${ingredList}";
  }
}

main(List<String> args) {
  var allPotions = subsets2or3(allIngredients)
      .map((list) => new Potion(new Set.from(list)))
      .where((potion) => potion.value() > 0)
      .toList();
  allPotions.sort((a, b) => b.value().compareTo(a.value()));

  if (!args.isEmpty && args[0] == '-v') {
    print(allPotions.join("\n"));
  } else {
    print("Found ${allPotions.length} potions from " +
        "${allIngredients.length} ingredients");
  }
}
