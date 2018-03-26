import 'package:built_collection/built_collection.dart';
import 'package:meta/meta.dart';

@immutable
class Effect {
  final num value;
  final String name;

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

@immutable
class Ingredient {
  final BuiltSet<Effect> effects;
  final String name;
  final BuiltMap<Effect, num> multipliers;

  Ingredient(String name, Set<Effect> effects, [Map<Effect, num> multipliers]) :
      name = name,
      effects = new BuiltSet<Effect>(effects),
      multipliers = new BuiltMap<Effect, num>(multipliers ?? <Effect, num>{});

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
