import 'package:meta/meta.dart';
import 'package:skyrim_alchemy/alchemy/common.dart';
import 'package:skyrim_alchemy/alchemy/alchemy.dart';

@immutable
class AppState {
  final Map<Ingredient, int> ingredCount;
  final List<Potion> potions;
  final bool isLoading;

  AppState({
    this.ingredCount = const {},
    this.potions = const [],
    this.isLoading = false,
  });

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