import 'dart:io';

// from https://gist.github.com/thmain/b574c5f0fc29c7698d65#file-allsubsetofsizek-java
class AllSubSetOfSizeK {
  void subset(List<num> A, num k, num start, num currLen, List<bool> used) {
    if (currLen == k) {
      for (num i = 0; i < A.length; i++) {
        if (used[i] == true) {
          stdout.write('${A[i]} ');
        }
      }
      stdout.write('\n');
      return;
    }
    if (start == A.length) {
      return;
    }

    used[start] = true;
    subset(A, k, start + 1, currLen + 1, used);
    used[start] = false;
    subset(A, k, start + 1, currLen, used);
  }
}

main() {
  List<num> A = [1, 2, 3, 4, 5];
  List<bool> B = new List(A.length);
  var ss = new AllSubSetOfSizeK();
  ss.subset(A, 3, 0, 0, B);
}