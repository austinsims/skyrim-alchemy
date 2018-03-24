import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:skyrim_alchemy/alchemy/alchemy.dart';
import 'package:skyrim_alchemy/alchemy/common.dart';

class PotionListPage extends StatelessWidget {
  final List<Potion> potions;
  final Map<Ingredient, int> ingredCount;
  final Function(Potion) onBrew;

  PotionListPage({
    @required this.potions,
    @required this.ingredCount,
    @required this.onBrew,
  });

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Potions')),
      body: potions.isEmpty ? _buildEmptyMessage() : _buildList(),
    );
  }

  Widget _buildEmptyMessage() {
    return new Center(
      child: new Text('No potions found', style: new TextStyle(fontSize: 32.0))
    );
  }

  Widget _buildList() {
    return new ListView.builder(
      itemCount: potions.length * 2,
      itemBuilder: (context, i) {
        if (i.isOdd) return new Divider();
        final index = i ~/ 2;
        return _buildRow(index);
      }
    );
  }

  _buildRow(int index) {
    // BUG: Value label assumes no potions worth >= $1000 which isn't true.
    // TODO: Line up ingredient lists, it looks horrid.
    final potion = potions[index];
    return new Row(
      children: [
        new Text(
          pad('\$${potion.value}', 4),
          style: new TextStyle(fontSize: 32.0, fontFamily: 'Courier'),
        ),
        new Column(
          children: potion.ingredients
              .map((i) => new Text('${i.name} (${ingredCount[i]})'))
              .toList(),
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
        new IconButton(
          icon: new Icon(Icons.check),
          onPressed: () => onBrew(potion),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween
    );
  }
}

/// Pads str with preceding spaces to make it "length" characters long.
/// Assumes "str" is less than or equal to "length" characters long.
String pad(String str, num length) {
  while (str.length < length) str = ' ' + str;
  return str;
}