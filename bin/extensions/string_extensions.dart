/// not done yet
// "test salom".isURL;
// "test salom".isPhoneNumber;
// "test salom".isHexadecimal;
//

extension ForString on String {
  String capitalize(String s) {
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

  String capitalizeFirst(String s) {
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

  String camelCase(String s) {
    if (s.isEmpty) {
      return '';
    }
    s = s.capitalize(s);

    s = s.split(' ').join();
    s = s.replaceRange(0, 0 + 1, s[0].toLowerCase());
    return s;
  }

  bool isAlphabetOnly(String s) {
    if (s.isEmpty) {
      return false;
    }
    RegExp exp = RegExp(r'^[a-zA-Z]+$');
    return exp.hasMatch(s);
  }

  bool isAudioFileName(String s) {
    if (s.isEmpty) {
      return false;
    }
    RegExp exp = RegExp(r'^\w+\.mp3|mp4$');
    return exp.hasMatch(s);
  }

  bool isBool(String s) {
    if (s.isEmpty) {
      return false;
    }
    RegExp exp = RegExp(r'(true)|(false)$');
    return exp.hasMatch(s);
  }

  bool isPalindrom(String s) {
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

  bool isEmail(String s) {
    if (s.isEmpty) {
      return false;
    }
    RegExp exp = RegExp(r'^\w+\.gmail.com');
    return exp.hasMatch(s);
  }
}
