import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:skyrim_alchemy/alchemy/common.dart';
import 'package:skyrim_alchemy/alchemy/ingredients.dart';
import 'package:skyrim_alchemy/routes.dart';
import 'package:skyrim_alchemy/viewmodels/home_view_model.dart';

class HomeScreen extends StatelessWidget {
  final HomeViewModel vm;

  HomeScreen(this.vm);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Ingredients'),
        actions: [
          new IconButton(
            icon: new Icon(Icons.clear_all),
            onPressed: vm.onClearAll,
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

    final int currentCount = vm.ingredCount[ingredient];

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
        vm.onSetIngredCount(ingredient, newCount);
      });
    }

    return new ListTile(
      title: new Text(ingredient.name),
      trailing: new Row(children: [
        new IconButton(
          icon: new Icon(Icons.remove),
          onPressed: () => vm.onDecrement(ingredient),
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
          onPressed: () => vm.onIncrement(ingredient),
        ),
      ]),
    );
  }
}