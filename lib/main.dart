import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter/material.dart';
import 'package:skyrim_alchemy/actions.dart';
import 'package:skyrim_alchemy/model.dart';
import 'package:skyrim_alchemy/containers/home_page.dart';
import 'package:skyrim_alchemy/containers/potion_list_container.dart';
import 'package:skyrim_alchemy/routes.dart';
import 'package:skyrim_alchemy/store.dart';

void main() {
  runApp(new App());
}

class App extends StatelessWidget {
  final store = createStore();

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
                return new HomePage();
              }
            );
          },
          Routes.potionList: (context) {
            return new PotionListContainer();
          }
        },
      ),
    );
  }
}