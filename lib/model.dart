import 'package:meta/meta.dart';
import 'package:skyrim_alchemy/alchemy/common.dart';

@immutable
class AppState {
  final Map<Ingredient, int> ingredCount;

  AppState({this.ingredCount = const {}});

  AppState copyWith({Map<Ingredient, int> ingredCount}) {
    return new AppState(ingredCount: ingredCount ?? this.ingredCount);
  }

  @override
  int get hashCode => ingredCount.hashCode;

  @override
  bool operator ==(Object other) =>
    identical(this, other) ||
    other is AppState &&
      runtimeType == other.runtimeType &&
      ingredCount == other.ingredCount;
}