import 'package:meta/meta.dart';
import 'package:skyrim_alchemy/alchemy/common.dart';
import 'package:skyrim_alchemy/alchemy/alchemy.dart';

@immutable
class AppState {
  final Map<Ingredient, int> ingredCount;
  final List<Potion> potions;

  AppState({
    this.ingredCount = const {},
    this.potions = const []});

  @override
  int get hashCode => ingredCount.hashCode ^ potions.hashCode;

  @override
  bool operator ==(Object other) =>
    identical(this, other) ||
    other is AppState &&
      runtimeType == other.runtimeType &&
      ingredCount == other.ingredCount &&
      potions == other.potions;
}