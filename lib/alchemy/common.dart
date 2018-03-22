class Effect {
  num value;
  String name;

  Effect(this.name, this.value);

  toString() => this.name;
}

class Ingredient {
  Set<Effect> effects;
  String name;

  Ingredient(this.name, this.effects);

  toString() => this.name;
}