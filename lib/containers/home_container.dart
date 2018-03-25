import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:skyrim_alchemy/actions.dart';
import 'package:skyrim_alchemy/alchemy/common.dart';
import 'package:skyrim_alchemy/model.dart';
import 'package:skyrim_alchemy/screens/home_screen.dart';

class HomeContainer extends StatelessWidget {
  HomeContainer({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, _ViewModel>(
      converter: (store) => new _ViewModel.from(store),
      builder: (context, vm) => new HomeScreen(
        ingredCount: vm.ingredCount,
        onIncrement: vm.onIncrement,
        onDecrement: vm.onDecrement,
        onSetIngredCount: vm.onSetIngredCount,
        onClearAll: vm.onClearAll,
      ),
    );
  }
}

class _ViewModel {
  Map<Ingredient, int> ingredCount;
  Function(Ingredient) onIncrement;
  Function(Ingredient) onDecrement;
  Function(Ingredient, int) onSetIngredCount;
  Function onClearAll;

  _ViewModel({
    @required this.ingredCount,
    @required this.onIncrement,
    @required this.onDecrement,
    @required this.onSetIngredCount,
    @required this.onClearAll,
  });

  factory _ViewModel.from(Store<AppState> store) {
    return new _ViewModel(
      ingredCount: store.state.ingredCount,
      onIncrement: (ingredient) {
        store.dispatch(new IncIngredAction(ingredient));
      },
      onDecrement: (ingredient) {
        store.dispatch(new DecIngredAction(ingredient));
      },
      onSetIngredCount: (ingredient, count) {
        store.dispatch(new SetIngredCountAction(ingredient, count));
      },
      onClearAll: () {
        store.dispatch(new InitCountsAction());
      },
    );
  }
}