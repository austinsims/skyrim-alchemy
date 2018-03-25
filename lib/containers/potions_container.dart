import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:skyrim_alchemy/actions.dart';
import 'package:skyrim_alchemy/alchemy/alchemy.dart';
import 'package:skyrim_alchemy/alchemy/common.dart';
import 'package:skyrim_alchemy/model.dart';
import 'package:skyrim_alchemy/screens/potions_screen.dart';

class PotionsContainer extends StatelessWidget {
  PotionsContainer({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, _ViewModel>(
      converter: (store) => new _ViewModel.from(store),
      builder: (context, vm) => new PotionsScreen(
        potions: vm.potions,
        ingredCount: vm.ingredCount,
        isLoading: vm.isLoading,
        onBrew: vm.onBrew,
      ),
    );
  }
}

class _ViewModel {
  final List<Potion> potions;
  final Map<Ingredient, int> ingredCount;
  final bool isLoading;
  final Function(Potion) onBrew;

  _ViewModel({
    @required this.potions,
    @required this.ingredCount,
    @required this.isLoading,
    @required this.onBrew
  });

  factory _ViewModel.from(Store<AppState> store) {
    return new _ViewModel(
      potions: store.state.potions,
      ingredCount: store.state.ingredCount,
      isLoading: store.state.isLoading,
      onBrew: (potion) {
        store.dispatch(new DecMultIngredAction(potion.ingredients));
      }
    );
  }
}