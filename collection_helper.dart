import 'package:collection/collection.dart';

var EQUALITY = new DeepCollectionEquality();

EqualitySet eqSet([Iterable i]) {
  if (i == null) {
    return new EqualitySet(EQUALITY);
  }
  return new EqualitySet.from(EQUALITY, i);
}