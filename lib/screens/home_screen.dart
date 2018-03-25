import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:skyrim_alchemy/alchemy/common.dart';
import 'package:skyrim_alchemy/alchemy/ingredients.dart';
import 'package:skyrim_alchemy/routes.dart';

class HomeScreen extends StatelessWidget {
  final Map<Ingredient, int> ingredCount;
  final Function(Ingredient) onIncrement;
  final Function(Ingredient) onDecrement;
  final Function(Ingredient, int) onSetIngredCount;
  final Function onClearAll;

  HomeScreen({
    @required this.ingredCount,
    @required this.onIncrement,
    @required this.onDecrement,
    @required this.onSetIngredCount,
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
      body: _buildList(context),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.local_pharmacy),
        onPressed: () {
          Navigator.pushNamed(context, Routes.potionList);
        }
      ),
    );
  }

  Widget _buildList(BuildContext context) {
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: allIngredients.length * 2,
      itemBuilder: (context, i) {
        if (i.isOdd) return new Divider();
        final index = i ~/ 2;
        return _buildRow(context, allIngredients[index]);
      }
    );
  }

  Widget _buildRow(BuildContext context, Ingredient ingredient) {
    // BUG: When count is 2 digits, add/remove buttons go out of line.

    final int currentCount = ingredCount[ingredient];

    _showDialog() {
      showDialog(
        context: context, 
        child: new NumberPickerDialog.integer(
          minValue: 0,
          maxValue: 999,
          title: new Text('Quantity'),
          initialIntegerValue: currentCount,
        ),
      ).then((newCount) {
        if (newCount == null) return;
        onSetIngredCount(ingredient, newCount);
      });
    }

    return new ListTile(
      title: new Text(ingredient.name),
      trailing: new Row(children: [
        new IconButton(
          icon: new Icon(Icons.remove),
          onPressed: () => onDecrement(ingredient),
        ),
        new Container(
          width: 52.0,
          child: new FlatButton(
            child: new Text(currentCount.toString()),
            onPressed: _showDialog,
          ),
        ),
        new IconButton(
          icon: new Icon(Icons.add),
          onPressed: () => onIncrement(ingredient),
        ),
      ]),
    );
  }
}