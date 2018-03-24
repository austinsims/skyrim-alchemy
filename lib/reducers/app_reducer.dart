import 'package:skyrim_alchemy/model.dart';
import 'package:skyrim_alchemy/reducers/ingred_count_reducer.dart';

AppState appReducer(AppState state, action) {
  return new AppState(
    ingredCount: ingredCountReducer(state.ingredCount, action),
  );
}