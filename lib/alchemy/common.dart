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
  final int value;
  final BuiltMap<Effect, num> multipliers;

  Ingredient(
      {String name,
      Set<Effect> effects,
      int value,
      Map<Effect, num> multipliers: const {}})
      : name = name,
        effects = new BuiltSet<Effect>(effects),
        value = value,
        multipliers = new BuiltMap<Effect, num>(multipliers) {
    for (final effect in multipliers.keys) {
      assert(effects.contains(effect),
          'Cannot add multiplier for effect $effect which is not contained in effects set');
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
          value == other.value &&
          multipliers == other.multipliers;

  @override
  int get hashCode =>
      effects.hashCode ^ name.hashCode ^ value.hashCode ^ multipliers.hashCode;
}
