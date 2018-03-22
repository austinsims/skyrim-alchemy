import 'package:flutter/material.dart';
import 'package:skyrim_alchemy/alchemy/common.dart';
import 'package:skyrim_alchemy/alchemy/ingredients.dart';

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
  @override
  Widget build(BuildContext context) => new Scaffold(
    appBar: new AppBar(
      title: new Text('Ingredients'),
    ),
    body: _buildIngredients(),
  );

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
    );
  }
}
