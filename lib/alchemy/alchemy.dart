import 'common.dart';
import 'package:built_collection/built_collection.dart';

num sum(Iterable<num> numbers) {
  var v = 0;
  for (num n in numbers) v += n;
  return v;
}

class Potion {
  BuiltSet<Ingredient> ingredients;
  Potion(Iterable<Ingredient> ingredients) {
    this.ingredients = new BuiltSet<Ingredient>(ingredients);
  }

  Set<Effect> getEffects() {
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

  num value() {
    num getMult(Effect e) {
      if (this.ingredients.any((i) => i.multipliers.containsKey(e))) {
        // TODO: Bug here where if multiple ingredients multiply an effect,
        // the first in the Iterable wins, whereas there is a specific priority
        // in the game itself that we're ignoring.
        var ingredient =
            this.ingredients.firstWhere((i) => i.multipliers.containsKey(e));
        var multiplier = ingredient.multipliers[e];
        return multiplier;
      }
      return 1;
    }
    var effects = getEffects();
    var values = effects.map((e) => e.value * getMult(e));
    return sum(values);
  }

  toString() {
    num val = value();
    String desc = getEffects().isEmpty
        ? "Nothing"
        : getEffects().map((e) => e.toString()).join(", ");
    String ingredList = ingredients.join(", ");
    return "\$$val potion of $desc made with $ingredList";
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is Potion &&
        ingredients == other.ingredients;
  }
      
  @override
  int get hashCode => ingredients.hashCode;
}

class Pair<T> {
  T left;
  T right;
  Pair(this.left, this.right);
  toString() {
    return '{$left, $right}';
  }
}

List<Potion> findPotions(List<Ingredient> ingredients) {
  var zet = new Set<Potion>();

  // Find all pairs of ingredients that share an effect.
  var pairs = new List<Pair<Ingredient>>();
  for (var i in ingredients) {
    for (var j in ingredients) {
      if (i == j) continue;
      if (i.effects.any((e) => j.effects.contains(e))) {
        pairs.add(new Pair(i, j));
      }
    }
  }

  // Add 2-ingredient potions.
  zet.addAll(pairs.map((pair) =>
      new Potion([pair.left, pair.right])));

  // Find pairs of pairs that share an ingredient. Make 3-ingredient potions
  // from those.
  for (var x in pairs) {
    for (var y in pairs) {
      if (x == y) continue;
      var ingredients = new BuiltSet<Ingredient>([x.left, x.right, y.left, y.right]);
      if (ingredients.length == 3) {
        var potion = new Potion(ingredients);
        zet.add(potion);
      }
    }
  }
  
  var list = zet.toList();
  sortPotions(list);
  return list;
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