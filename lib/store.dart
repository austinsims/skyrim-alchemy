import 'dart:async';
import 'dart:isolate';
import 'package:redux/redux.dart';
import 'package:rxdart/transformers.dart';
import 'package:skyrim_alchemy/actions.dart';
import 'package:skyrim_alchemy/alchemy/alchemy.dart';
import 'package:skyrim_alchemy/alchemy/common.dart';
import 'package:skyrim_alchemy/alchemy/ingredients.dart';
import 'package:skyrim_alchemy/model.dart';
import 'package:skyrim_alchemy/reducers/app_reducer.dart';

const POTIONS_SHOWN_COUNT = 7;

Store<AppState> createStore() {
  final initialState = new AppState();
  final store =new Store<AppState>(
    appReducer,
    initialState: initialState,
  );

  // Whenever ingredient list changes, recompute potions.
  var lastIngredCount = initialState.ingredCount;

  // Debounce potion computations since it's expensive; spawning many Isolates
  // at once can bust the heap and crash the app.
  var debounceTransformer = new DebounceStreamTransformer<AppState>(
      new Duration(milliseconds: 300));
  store.onChange.transform(debounceTransformer).listen((appState) async {
    // If ingredients haven't changed, don't do anything.
    if (appState.ingredCount == lastIngredCount) return;
    lastIngredCount = appState.ingredCount;

    // Begin loading.
    store.dispatch(new StartLoadingAction());

    var heldIngredients = allIngredients
        .where((i) => appState.ingredCount[i] > 0)
        .toList();
    final potions =
        (await _findPotionsIsolate(heldIngredients))
        .take(POTIONS_SHOWN_COUNT)
        .toList();

    // Fill potions and stop loading.
    store.dispatch(new SetPotionsAction(potions));
    store.dispatch(new StopLoadingAction());
  });

  return store;
}

Future<List<Potion>> _findPotionsIsolate(List<Ingredient> ingredients) async {
  ReceivePort receivePort = new ReceivePort();
  await Isolate.spawn(isolateEntryPoint, receivePort.sendPort);
  SendPort sendPort = await receivePort.first;
  List<Potion> potions = await sendReceive(sendPort, ingredients);
  return potions;
}

void isolateEntryPoint(SendPort sendPort) async {
  ReceivePort receivePort = new ReceivePort();
  sendPort.send(receivePort.sendPort);
  await for (var msg in receivePort) {
    List<Ingredient> ingredients = msg[0];
    SendPort replyTo = msg[1];
    var potions = findPotions(ingredients);
    replyTo.send(potions);
    Isolate.current.kill();
  }
}

Future sendReceive(SendPort port, msg) {
  ReceivePort response = new ReceivePort();
  port.send([msg, response.sendPort]);
  return response.first;
}