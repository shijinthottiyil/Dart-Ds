bool isVowel(String str) {
  bool isVow = false;
  for (int i = 0; i < str.length; i++) {
    if ("aeiou".contains(str[i])) {
      return isVow = true;
    } else {
      return isVow = false;
    }
  }
  return isVow;
}

void main() {
  String str = 'i';
  bool isVow = isVowel(str);
  isVow ? print('true') : print('false');
}
