import 'collection_helper.dart' show eqSet;
import 'subsets.dart' show subsets2or3;
import "package:test/test.dart";

void main() {
  test("finds no subsets of empty set", () {
    var input = eqSet();
    var expected = [];
    expect(subsets2or3(input), equals(expected));
  });

  test("finds no subsets when only single element", () {
    var input = eqSet(['a']);
    var expected = [];
    expect(subsets2or3(input), equals(expected));
  });

  test("finds single subset when two elements", () {
    var input = eqSet(['a', 'b']);
    var expected = [
      eqSet(['a', 'b']),
    ];
    expect(subsets2or3(input), equals(expected));
  });

  test("finds subsets when three elements", () {
    var input = eqSet(['a', 'b', 'c']);
    var expected = [
      eqSet(['a', 'b']),
      eqSet(['a', 'c']),
      eqSet(['b', 'c']),
      eqSet(['a', 'b', 'c']),
    ];
    expect(subsets2or3(input), equals(expected));
  });

  test("finds subsets when four elements", () {
    var input = eqSet(['a', 'b', 'c', 'd']);
    var expected = [
      eqSet(['a', 'b']),
      eqSet(['a', 'c']),
      eqSet(['a', 'd']),
      eqSet(['b', 'c']),
      eqSet(['b', 'd']),
      eqSet(['c', 'd']),
      eqSet(['a', 'b', 'c']),
      eqSet(['a', 'b', 'd']),
      eqSet(['a', 'c', 'd']),
      eqSet(['b', 'c', 'd']),
    ];
    expect(subsets2or3(input), equals(expected));
  });
}