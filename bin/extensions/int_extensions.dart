// for int
// // 5.isPalindrome
// // 5.isHappyNumber
// // 6.isFibonacce
extension Number on int {
  bool isPolindrome(int n) {
    int n1 = 0;
    int m = n;
    while (n != 0) {
      n1 = n1 * 10 + n % 10;
      n ~/= 10;
    }

    return m == n1;
  }

  bool isFib(int n) {
    if (n == 0 || n == 1) {
      return true;
    }
    int f1 = 0;
    int f2 = 1;
    int res = 0;
    for (int i = 2; i <= n; i++) {
      res = f2 + f1;
      f1 = f2;
      f2 = res;
      if (n == res) {
        return true;
      } else if (res > n) {
        return false;
      }
    }
    return false;
  }
  bool get isHappy {
    int getNext(int n) {
      int sum = 0;
      int res = 0;

      while (n > 0) {
        res = n % 10;
        sum += res * res;
        n = n ~/ 10;
      }
      return sum;
    }

    bool isHappyNum() {
      int n = this;
      Set<int> set = {};
      while (n != 1 && !set.contains(n)) {
        set.add(n);
        n = getNext(n);
      }
      return n == 1;
    }
    return this == 1;
  }
}
