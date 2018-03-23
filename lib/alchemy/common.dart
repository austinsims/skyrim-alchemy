class Effect {
  num value;
  String name;

  Effect(this.name, this.value);

  toString() => this.name;
}

class Ingredient {
  Set<Effect> effects;
  String name;
  Map<Effect, num> multipliers;

  Ingredient(String name, Set<Effect> effects, [Map<Effect, num> multipliers]) {
    this.name = name;
    this.effects = effects;
    if (multipliers != null) {
      this.multipliers = multipliers;
    } else {
      this.multipliers = new Map.identity();
    }
  }
  toString() => this.name;
}
