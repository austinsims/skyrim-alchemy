import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:skyrim_alchemy/actions.dart';
import 'package:skyrim_alchemy/model.dart';
import 'package:skyrim_alchemy/presentation/home_screen.dart';
import 'package:skyrim_alchemy/presentation/potion_list_screen.dart';
import 'package:skyrim_alchemy/reducers/app_reducer.dart';
import 'package:skyrim_alchemy/routes.dart';

void main() {
  runApp(new App());
}

class App extends StatelessWidget {
  final store = new Store<AppState>(
    appReducer,
    initialState: new AppState(),
  );

  App();

  @override
  Widget build(BuildContext context) {
    return new StoreProvider(
      store: store,
      child: new MaterialApp(
        title: 'Skyrim Alchemy Calculator',
        routes: {
          Routes.home: (context) {
            return new StoreBuilder<AppState>(
              onInit: (store) => store.dispatch(new InitCountsAction()),
              builder: (context, store) {
                return new HomeScreen();
              }
            );
          },
          Routes.potionList: (context) {
            return new PotionListScreen();
          }
        },
      ),
    );
  }
}