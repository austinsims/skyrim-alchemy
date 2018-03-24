import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter/material.dart';
import 'package:skyrim_alchemy/actions.dart';
import 'package:skyrim_alchemy/alchemy/alchemy.dart';
import 'package:skyrim_alchemy/alchemy/common.dart';
import 'package:skyrim_alchemy/alchemy/ingredients.dart';
import 'package:skyrim_alchemy/model.dart';

class PotionListPage extends StatelessWidget {
  PotionListPage({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Potions'),
      ),
      body: _buildPotionList(),
    );
  }

  Widget _buildPotionList() { 
    return new StoreConnector<AppState, Map<Ingredient, int>>(
      converter: (store) => store.state.ingredCount,
      builder: (context, ingredCount) {
        var potions = _findPotions(ingredCount);
        if (potions.isEmpty) {
          return new Center(
            child: new Text('No potions found', style: new TextStyle(fontSize: 32.0))
          );
        } else {
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
      }
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
        new StoreConnector<AppState, VoidCallback>(
          converter: (store) {
            return () => store.dispatch(
                new DecMultIngredAction(potion.ingredients));
          },
          builder: (context, callback) => new IconButton(
            icon: new Icon(Icons.check),
            onPressed: callback
          ),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween
    );
  }
}

List<Potion> _findPotions(Map<Ingredient, int> ingredCounts) {
  // TODO: Move off main thread.
  var heldIngredients = allIngredients
      .where((i) => ingredCounts[i] > 0)
      .toList();
  return findPotions(heldIngredients);
}

/// Pads str with preceding spaces to make it "length" characters long.
/// Assumes "str" is less than or equal to "length" characters long.
String pad(String str, num length) {
  while (str.length < length) str = ' ' + str;
  return str;
}