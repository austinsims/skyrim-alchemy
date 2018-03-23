import 'package:flutter/material.dart';
import 'package:skyrim_alchemy/alchemy/common.dart';
import 'package:skyrim_alchemy/alchemy/ingredients.dart';
import 'package:skyrim_alchemy/alchemy/alchemy.dart';
import 'dart:math' show max;

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Skyrim Alchemy Calculator',
      home: new IngredientList(),
    );
  }
}

class IngredientList extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<IngredientList> {
  final _quantity = new Map<Ingredient, num>();

  _MyHomePageState() {
    _resetQuantities();
  }

  void _resetQuantities() {
    initQuantiyMap(_quantity);
  }

  @override
  Widget build(BuildContext context) => new Scaffold(
    appBar: new AppBar(
      title: new Text('Ingredients'),
      actions: [
        new IconButton(icon: new Icon(Icons.clear_all), onPressed: () {
          setState(() { _resetQuantities(); });
        }),
        new IconButton(icon: new Icon(Icons.local_pharmacy), onPressed: _pushPotions),
      ],
    ),
    body: _buildIngredients(),
  );

  _pushPotions() {
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context) {
          var heldIngredients = allIngredients
              .where((i) => _quantity[i] > 0)
              .toList();
          // TODO: Move findPotions off main thread.
          var potions = findPotions(heldIngredients);
          // TODO: Nice UI to show potions.
          var blob = 'Found ${potions.length} potions\n\n'
              + potions.map((p) => p.toString()).join('\n\n');
          return new Scaffold(
            appBar: new AppBar(title: new Text('Potions')),
            // TODO: "Done" button to deduct ingredients and update potions.
            body: new Text(blob),
          );
        }
      )
    );
  }

  Widget _buildIngredients() => new ListView.builder(
    padding: const EdgeInsets.all(16.0),
    itemCount: allIngredients.length * 2,
    itemBuilder: (context, i) {
      if (i.isOdd) {
        return new Divider();
      }

      // Compensate for dividers
      final index = i ~/ 2;

      return _buildRow(allIngredients[index]);
    }
  );

  Widget _buildRow(Ingredient ingredient) {
    return new ListTile(
      title: new Text(ingredient.name),
      trailing: new Row(children: [
        new IconButton(icon: new Icon(Icons.remove), onPressed: () {
          setState(() { _quantity[ingredient] = max(0, _quantity[ingredient] - 1); });
        }),
        // TODO: Use a text field so you can type in the number.
        new Text(_quantity[ingredient].toString()),
        new IconButton(icon: new Icon(Icons.add), onPressed: () {
          setState(() { _quantity[ingredient] = _quantity[ingredient] + 1; });
        }),
      ]),
    );
  }
}

void initQuantiyMap(Map<Ingredient, num> map) {
  for (var ingredient in allIngredients) {
    map[ingredient] = 0;
  }
}