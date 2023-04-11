// Reversing a string:

// void main() {
//   String str = "shijin";
//   String reverse = "";
//   for (int i = str.length - 1; i >= 0; i--) {
//     reverse = reverse + str[i];
//   }
//   print(reverse);
// }

void main() {
  String str = 'shijin';
  String reverse = str.split('').reversed.toString();
  print(reverse);
}
