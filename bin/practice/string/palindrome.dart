// Checking if a string is a palindrome:
bool isPalindrome(String str) {
  int i = 0;
  int j = str.length - 1;
  while (i < j) {
    if (str[i] != str[j]) {
      return false;
    }
    i++;
    j--;
  }
  return true;
}

void main() {
  String str = "malayalam";
  bool isPal = isPalindrome(str);
  isPal ? print('palindrome') : print("not palindrome");
}
