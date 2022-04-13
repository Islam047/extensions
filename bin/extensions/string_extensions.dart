/// not done yet
///
// "test salom".isURL;
// "test salom".isPhoneNumber;


extension ForString on String {
  /// Time Complexity O(n)
  /// Space Complexity O(1)
  String get capitalize {
    String s = this;
    if (s.isEmpty) {
      return '';
    }
    String str = '';
    str += s[0].toUpperCase();
    for (int i = 0; i < s.length - 1; i++) {
      if (s[i] == ' ') {
        str += s[i + 1].toUpperCase();
      } else {
        str += s[i + 1];
      }
    }
    return str;
  }

  String get capitalizeFirst {
    /// Time Complexity O(n)
    /// Space Complexity O(1)

    String s = this;
    if (s.isEmpty) {
      return '';
    }
    for (int i = 0; i < s.length; i++) {
      if (s.codeUnitAt(i) == 32) {
        continue;
      } else {
        s = s.replaceRange(i, i + 1, s[i].toUpperCase());
        break;
      }
    }
    return s;
  }

  String get camelCase {
    /// Time Complexity O(n)
    /// Space Complexity O(1)

    String s = this;
    if (s.isEmpty) {
      return '';
    }
    s = s.capitalize;

    s = s.split(' ').join();
    s = s.replaceRange(0, 0 + 1, s[0].toLowerCase());
    return s;
  }

  bool get isAlphabetOnly {
    /// Time Complexity O(1)
    /// Space Complexity O(1)

    String s = this;
    if (s.isEmpty) {
      return false;
    }
    RegExp exp = RegExp(r'^[a-zA-Z]+$');
    return exp.hasMatch(s);
  }

  bool get isAudioFileName {
    /// Time Complexity O(1)
    /// Space Complexity O(1)

    String s = this;
    if (s.isEmpty) {
      return false;
    }
    RegExp exp = RegExp(r'^\w+\.mp3|mp4$');
    return exp.hasMatch(s);
  }

  bool get isBool {
    /// Time Complexity O(1)
    /// Space Complexity O(1)

    String s = this;
    if (s.isEmpty) {
      return false;
    }
    RegExp exp = RegExp(r'(true)|(false)$');
    return exp.hasMatch(s);
  }

  bool get isPalindrome {
    /// Time Complexity O(n)
    /// Space Complexity O(1)

    String s = this;
    if (s.isEmpty) {
      return false;
    }
    String str = '';
    for (int i = s.length - 1; i >= 0; i--) {
      str += s[i];
    }
    if (s == str) {
      return true;
    } else {
      return false;
    }
  }

  bool get isEmail {
    /// Time Complexity O(1)
    /// Space Complexity O(1)

    String s = this;
    if (s.isEmpty) {
      return false;
    }
    RegExp exp = RegExp(r'^\w+\.@gmail.com');
    return exp.hasMatch(s);
  }
  bool get isHexadecimal{
    if(replaceAll(RegExp('[A-Fa-f0-9]|[A-F]'), '').isEmpty){
      return true;
    }else{
      return false;
    }
  }

}
