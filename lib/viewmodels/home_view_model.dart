import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';
import 'package:skyrim_alchemy/actions.dart';
import 'package:skyrim_alchemy/model.dart';
import 'package:skyrim_alchemy/alchemy/common.dart';

class HomeViewModel {
  Map<Ingredient, int> ingredCount;
  Function(Ingredient) onIncrement;
  Function(Ingredient) onDecrement;
  Function(Ingredient, int) onSetIngredCount;
  Function onClearAll;

  HomeViewModel({
    @required this.ingredCount,
    @required this.onIncrement,
    @required this.onDecrement,
    @required this.onSetIngredCount,
    @required this.onClearAll,
  });

  factory HomeViewModel.from(Store<AppState> store) {
    return new HomeViewModel(
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