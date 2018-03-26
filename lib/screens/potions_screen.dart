import 'package:flutter/material.dart';
import 'package:skyrim_alchemy/alchemy/alchemy.dart';
import 'package:skyrim_alchemy/alchemy/common.dart';
import 'package:skyrim_alchemy/viewmodels/potions_view_model.dart';

class PotionsScreen extends StatelessWidget {
  final PotionsViewModel vm;

  PotionsScreen(this.vm);

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Potions')),
      body: vm.potions.isEmpty ? _buildEmptyMessage() : _buildBody(),
    );
  }

  Widget _buildBody() {
      return new Column(children: [
        new Opacity(
          opacity: vm.isLoading ? 1.0 : 0.0,
          child: new LinearProgressIndicator()
        ),
        new Opacity(
          opacity: vm.isLoading ? 0.5 : 1.0,
          child: _buildTable(),
        ),
      ]);
  }

  Widget _buildEmptyMessage() {
    return new Center(
      child: new Text('No potions found', style: new TextStyle(fontSize: 32.0))
    );
  }

  Widget _buildTable() {
    return new Table(
      children: vm.potions.map(_buildRow).toList(),
      columnWidths: {
        0: new FractionColumnWidth(0.28),
        1: new FractionColumnWidth(0.55),
        2: new FractionColumnWidth(0.17),
      },
    );
  }

  TableRow _buildRow(Potion potion) {
    final sortedIngredients = new List<Ingredient>.from(potion.ingredients);
    sortedIngredients.sort((a, b) => a.name.compareTo(b.name));
    return new TableRow(
      children: [
        new TableCell(
          child: new Padding(
            padding: new EdgeInsets.all(12.0),
            child: new Text(
              '\$${potion.value.floor()}',
              style: new TextStyle(fontSize: 32.0, fontFamily: 'Courier'),
            )
          )
        ),
        new TableCell(
          child: new Padding(
            padding: new EdgeInsets.all(12.0),
            child: new Column(
              children: sortedIngredients.map((i) => new Text(
                    '${i.name} (${vm.ingredCount[i]})',
                    style: vm.ingredCount[i] == 0 ?
                        new TextStyle(decoration: TextDecoration.lineThrough) :
                        new TextStyle(),
                  ))
                  .toList(),
              crossAxisAlignment: CrossAxisAlignment.start,
            )
          )
        ),
        new TableCell(
          child: new Padding(
            padding: new EdgeInsets.all(12.0), child: new IconButton(
              icon: new Icon(Icons.check),
              onPressed: () => vm.onBrew(potion),
            )
          )
        ),
      ],
    );
  }
}