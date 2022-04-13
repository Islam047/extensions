// for int
// // 5.isPalindrome
// // 5.isHappyNumber
// // 6.isFibonacce
extension Number on int {
  /// Time Complexity O(n)
  /// Space Complexity O(1)

  bool  get isPalindrome {
    int n = this;
    int n1 = 0;
    int m = n;
    while (n != 0) {
      n1 = n1 * 10 + n % 10;
      n ~/= 10;
    }

    return m == n1;
  }

  bool get isFib {
    /// Time Complexity O(n)
    /// Space Complexity O(1)

    int n = this;
    int f1 = 0;
    int f2 = 1;
    int res = 0;
    if (n == 0 || n == 1) {
      return true;
    }

    for (int i = 2; i <= n; i++) {
      res = f2 + f1;
      f1 = f2;
      f2 = res;
      if (n == res) {
        return true;
      }
    }
    return false;
  }
  //
  // int isHappy() {
  //   int a = this;
  //
  // }
}
