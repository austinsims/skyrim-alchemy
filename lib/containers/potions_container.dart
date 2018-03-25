import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:skyrim_alchemy/model.dart';
import 'package:skyrim_alchemy/screens/potions_screen.dart';
import 'package:skyrim_alchemy/viewmodels/potions_view_model.dart';

class PotionsContainer extends StatelessWidget {
  PotionsContainer({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, PotionsViewModel>(
      converter: (store) => new PotionsViewModel.from(store),
      builder: (context, vm) => new PotionsScreen(vm),
    );
  }
}
