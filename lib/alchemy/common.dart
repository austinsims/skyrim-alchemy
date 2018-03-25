import 'package:built_collection/built_collection.dart';

class Effect {
  num value;
  String name;

  Effect(this.name, this.value);

  toString() => this.name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      runtimeType == other.runtimeType &&
      other is Effect &&
      value == other.value &&
      name == other.name;
  
  @override
  int get hashCode => value.hashCode ^ name.hashCode;
}

class Ingredient {
  BuiltSet<Effect> effects;
  String name;
  BuiltMap<Effect, num> multipliers;

  Ingredient(String name, Set<Effect> effects, [Map<Effect, num> multipliers]) {
    this.name = name;
    this.effects = new BuiltSet<Effect>(effects);
    if (multipliers != null) {
      this.multipliers = new BuiltMap<Effect, num>(multipliers);
    } else {
      this.multipliers = new BuiltMap<Effect, num>();
    }
  }

  toString() => this.name;

  @override
  operator ==(Object other) =>
      identical(this, other) ||
      runtimeType == other.runtimeType &&
      other is Ingredient &&
      effects == other.effects &&
      name == other.name &&
      multipliers == other.multipliers;

  @override
  int get hashCode => effects.hashCode ^ name.hashCode ^ multipliers.hashCode;
}
