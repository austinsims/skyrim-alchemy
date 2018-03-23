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

  List<Potion> _findPotions() {
    // TODO: Move off main thread.
    var heldIngredients = allIngredients
        .where((i) => _quantity[i] > 0)
        .toList();
    return findPotions(heldIngredients);
  }

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
    body: _buildIngredientList(),
  );

  _pushPotions() {
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context) {
          return new Scaffold(
            appBar: new AppBar(title: new Text('Potions')),
            body: _buildPotionList(),
          );
        }
      )
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

  Widget _buildPotionList() { 
    var potions = _findPotions();
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: potions.length * 2,
      itemBuilder: (context, i) {
        if (i.isOdd) {
          return new Divider();
        }
        final index = i ~/ 2;
        return _buildPotionRow(potions[index]);
      }
    );
  }

  Widget _buildIngredientRow(Ingredient ingredient) {
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

  Widget _buildPotionRow(Potion potion) {
    return new Row(
      children: [
        new Text(
          pad('\$${potion.value()}', 4), // Assumes no potions worth >= $1000
          style: new TextStyle(fontSize: 32.0, fontFamily: 'Courier'),
        ),
        // TODO: Line up the ingredient lists, it looks horrid.
        new Column(
          children: potion.ingredients.map((i) => new Text(i.name)).toList(),
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
        new IconButton(icon: new Icon(Icons.check), onPressed: () {
          setState(() {
            for (var ingredient in potion.ingredients) {
              // TODO: This doesn't re-render after pressing button.
              _quantity[ingredient] = _quantity[ingredient] - 1;
            }
          });
        }),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween
    );
  }
}

void initQuantiyMap(Map<Ingredient, num> map) {
  for (var ingredient in allIngredients) {
    map[ingredient] = 0;
  }
}

/// Pads str with preceding spaces to make it "length" characters long.
/// Assumes "str" is less than or equal to "length" characters long.
String pad(String str, num length) {
  while (str.length < length) str = ' ' + str;
  return str;
}