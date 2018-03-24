import 'package:skyrim_alchemy/model.dart';
import 'package:redux/redux.dart';
import 'package:skyrim_alchemy/reducers/app_reducer.dart';
import 'package:skyrim_alchemy/alchemy/alchemy.dart';
import 'package:skyrim_alchemy/actions.dart';
import 'package:skyrim_alchemy/alchemy/ingredients.dart';

Store<AppState> createStore() {
  final initialState = new AppState();
  final store =new Store<AppState>(
    appReducer,
    initialState: initialState,
  );

  // Whenever ingredient list changes, recompute potions.
  var lastIngredCount = initialState.ingredCount;
  store.onChange.listen((appState) {
    // If ingredients haven't changed, don't do anything.
    if (appState.ingredCount == lastIngredCount) return;
    lastIngredCount = appState.ingredCount;

    var heldIngredients = allIngredients
        .where((i) => appState.ingredCount[i] > 0)
        .toList();
    final potions = findPotions(heldIngredients);

    store.dispatch(new SetPotionsAction(potions));
  });

  return store;
}