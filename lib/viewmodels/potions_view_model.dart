import 'package:built_collection/built_collection.dart';
import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';
import 'package:skyrim_alchemy/actions.dart';
import 'package:skyrim_alchemy/alchemy/alchemy.dart';
import 'package:skyrim_alchemy/alchemy/common.dart';
import 'package:skyrim_alchemy/model.dart';

class PotionsViewModel {
  final List<Potion> potions;
  final BuiltMap<Ingredient, int> ingredCount;
  final bool isLoading;
  final Function(Potion) onBrew;

  PotionsViewModel({
    @required this.potions,
    @required this.ingredCount,
    @required this.isLoading,
    @required this.onBrew
  });

  factory PotionsViewModel.from(Store<AppState> store) {
    return new PotionsViewModel(
      potions: store.state.potions,
      ingredCount: store.state.ingredCount,
      isLoading: store.state.isLoading,
      onBrew: (potion) {
        if (store.state.isLoading) return;
        store.dispatch(new BrewNPotionsAction(potion));
      }
    );
  }
}