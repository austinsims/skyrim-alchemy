import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter/material.dart';
import 'package:skyrim_alchemy/alchemy/common.dart';
import 'package:skyrim_alchemy/alchemy/ingredients.dart';
import 'package:skyrim_alchemy/model.dart';
import 'package:flutter/foundation.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Ingredients'),
        actions: [
          new IconButton(icon: new Icon(Icons.clear_all), onPressed: () {
            // TODO: Clear ingredients.
          }),
          new IconButton(icon: new Icon(Icons.local_pharmacy), onPressed: () {
            // TODO: Go to potion list route.
          }),
        ],
      ),
      body: _buildIngredientList(),
    );
  }

  Widget _buildIngredientList() {
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: allIngredients.length * 2,
      itemBuilder: (context, i) {
        if (i.isOdd) {
          return new Divider();
        }
        final index = i ~/ 2;
        return _buildIngredientRow(allIngredients[index]);
      }
    );
  }

  Widget _buildIngredientRow(Ingredient ingredient) {
    return new ListTile(
      title: new Text(ingredient.name),
      trailing: new Row(children: [
        new IconButton(icon: new Icon(Icons.remove), onPressed: () {
          // TODO: Dispatch decrement action
        }),
        new StoreConnector<AppState, int>(
          converter: (store) => store.state.ingredCount[ingredient],
          builder: (context, count) => new Text(count.toString()),
        ),
        new IconButton(icon: new Icon(Icons.add), onPressed: () {
          // TODO: Dispatch increment action
        }),
      ]),
    );
  }
}