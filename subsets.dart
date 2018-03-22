// from https://gist.github.com/thmain/b574c5f0fc29c7698d65#file-allsubsetofsizek-java
List<Set> subsetsOfSize(List<num> list, num size) {
  List<Set> result = [];
  List<bool> used = new List.filled(list.length, false);

  void subsetsInternal(num start, num currLen) {
    if (currLen == size) {
      Set s = new Set.identity();
      for (num i = 0; i < list.length; i++) {
        if (used[i]) {
          s.add(list[i]);
        }
      }
      result.add(s);
    } else if (start < list.length) {
      used[start] = true;
      subsetsInternal(start + 1, currLen + 1);
      used[start] = false;
      subsetsInternal(start + 1, currLen);
    }
  }

  subsetsInternal(0, 0);
  return result;
}

main() {
  List<num> list = ['a', 'b', 'c'];
  // List<num> list = [];
  var ss = subsetsOfSize(list, 2);
  print('Found ${ss.length} sets');
  for (var s in ss) {
    print(s);
  }
}