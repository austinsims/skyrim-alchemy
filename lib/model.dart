import 'package:built_collection/built_collection.dart';
import 'package:meta/meta.dart';
import 'package:skyrim_alchemy/alchemy/alchemy.dart';
import 'package:skyrim_alchemy/alchemy/common.dart';

@immutable
class AppState {
  final BuiltMap<Ingredient, int> ingredCount;
  final List<Potion> potions;
  final bool isLoading;

  AppState({
    BuiltMap<Ingredient, int> ingredCount,
    List<Potion> potions,
    bool isLoading,
  }) :
    ingredCount = ingredCount ?? new BuiltMap<Ingredient, int>(),
    potions = potions ?? [],
    isLoading = isLoading ?? false;

  @override
  int get hashCode =>
      ingredCount.hashCode ^ potions.hashCode ^ isLoading.hashCode;

  @override
  bool operator ==(Object other) =>
    identical(this, other) ||
    other is AppState &&
      runtimeType == other.runtimeType &&
      ingredCount == other.ingredCount &&
      potions == other.potions &&
      isLoading == other.isLoading;
}