import 'collection_helper.dart' show eqSet;
import 'package:collection/collection.dart';

Iterable<EqualitySet> subsets2(Set s) {
  EqualitySet<EqualitySet> subsets = eqSet();
  for (var i in s) {
    for (var j in s) {
      subsets.add(new Set.from([i, j]));
    }
  }
  return subsets.where((subset) => subset.length == 2);
}

Iterable<EqualitySet> subsets3(Set s) {
  EqualitySet<EqualitySet> subsets = eqSet();
  for (var i in s) {
    for (var j in s) {
      for (var k in s) {
        subsets.add(new Set.from([i, j, k]));
      }
    }
  }
  return subsets.where((subset) => subset.length == 3);
}

List<EqualitySet> subsets2or3(Set s) {
  var result = [];
  result.addAll(subsets2(s));
  result.addAll(subsets3(s));
  return result;
}