import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:skyrim_alchemy/alchemy/common.dart';
import 'package:skyrim_alchemy/alchemy/ingredients.dart';
import 'package:skyrim_alchemy/routes.dart';

class HomePageScreen extends StatelessWidget {
  final Map<Ingredient, int> ingredCount;
  final Function(Ingredient) onIncrement;
  final Function(Ingredient) onDecrement;
  final Function onClearAll;

  HomePageScreen({
    @required this.ingredCount,
    @required this.onIncrement,
    @required this.onDecrement,
    @required this.onClearAll,
  });

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Ingredients'),
        actions: [
          new IconButton(
            icon: new Icon(Icons.clear_all),
            onPressed: onClearAll,
          ),
        ],
      ),
      body: _buildList(),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.local_pharmacy),
        onPressed: () {
          Navigator.pushNamed(context, Routes.potionList);
        }
      ),
    );
  }

  Widget _buildList() {
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: allIngredients.length * 2,
      itemBuilder: (context, i) {
        if (i.isOdd) return new Divider();
        final index = i ~/ 2;
        return _buildRow(allIngredients[index]);
      }
    );
  }

  Widget _buildRow(Ingredient ingredient) {
    // BUG: When count is 2 digits, add/remove buttons go out of line.
    return new ListTile(
      title: new Text(ingredient.name),
      trailing: new Row(children: [
        new IconButton(
          icon: new Icon(Icons.remove),
          onPressed: () => onDecrement(ingredient),
        ),
        new Text(ingredCount[ingredient].toString()),
        new IconButton(
          icon: new Icon(Icons.add),
          onPressed: () => onIncrement(ingredient),
        ),
      ]),
    );
  }
}