import 'package:skyrim_alchemy/actions.dart';
import 'package:skyrim_alchemy/alchemy/alchemy.dart';

List<Potion> potionsReducer(List<Potion> state, action) {
  if (!(action is SetPotionsAction)) {
    return state;
  }
  return action.potions;
}