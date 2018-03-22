import 'subsets.dart' show subsetsOfSize;
import "package:test/test.dart";

void main() {
  test("finds no subsets of size 2 from empty set", () {
    var input = [];
    var expected = [];
    expect(subsetsOfSize(input, 2), equals(expected));
  });

  test("finds no subsets of size 2 from single element", () {
    var input = [];
    var expected = [];
    expect(subsetsOfSize(input, 2), equals(expected));
  });

  test("finds single subset of size 2 from 2 elements", () {
    var input = ['a', 'b'];
    var expected = [
      ['a', 'b'],
    ];
    expect(subsetsOfSize(input, 2), equals(expected));
  });

  test("finds subsets of size 2 from 3 elements", () {
    var input = ['a', 'b', 'c'];
    var expected = [
      ['a', 'b'],
      ['a', 'c'],
      ['b', 'c'],
    ];
    expect(subsetsOfSize(input, 2), equals(expected));
  });

  test("finds subsets of size 2 from four elements", () {
    var input = ['a', 'b', 'c', 'd'];
    var expected = [
      ['a', 'b'],
      ['a', 'c'],
      ['a', 'd'],
      ['b', 'c'],
      ['b', 'd'],
      ['c', 'd'],
    ];
    expect(subsetsOfSize(input, 2), equals(expected));
  });
}