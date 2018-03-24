import 'package:args/args.dart';
import 'ingredients.dart';
import 'alchemy.dart';
import 'dart:io';

main(List<String> args) {
  var parser = new ArgParser();
  parser.addFlag('verbose', abbr: 'v');
  parser.addOption('num', abbr: 'n', defaultsTo: '10');

  var results = parser.parse(args);

  num numIngred;
  try {
    numIngred = int.parse(results['num']);
  } catch (e) {
    print(parser.usage);
    exit(64);
  }

  var ingredients = allIngredients.take(numIngred).toList();
  var potions = findPotions(ingredients);

  potions.sort((a, b) => b.value.compareTo(a.value));

  if (results['verbose']) {
    print(potions.join("\n"));
  } else {
    print("Found ${potions.length} potions from " +
        "${ingredients.length} ingredients");
  }
}
