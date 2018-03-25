import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:skyrim_alchemy/model.dart';
import 'package:skyrim_alchemy/screens/home_screen.dart';
import 'package:skyrim_alchemy/viewmodels/home_view_model.dart';

class HomeContainer extends StatelessWidget {
  HomeContainer({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, HomeViewModel>(
      converter: (store) => new HomeViewModel.from(store),
      builder: (context, vm) => new HomeScreen(vm),
    );
  }
}
