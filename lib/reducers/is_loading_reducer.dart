import 'package:redux/redux.dart';
import 'package:skyrim_alchemy/actions.dart';

final isLoadingReducer = combineTypedReducers<bool>([
  new ReducerBinding<bool, StartLoadingAction>(_start),
  new ReducerBinding<bool, StopLoadingAction>(_stop),
]);

bool _start (bool state, action) => true;
bool _stop (bool state, action) => false;