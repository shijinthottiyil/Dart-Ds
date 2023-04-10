void main() {
  List<int> numbers = [2, 5, 8, 3, 9, 7, 4, 6, 1];
  int sum = 0;
  for (var number in numbers) {
    sum = sum + number;
  }
  print('sum=$sum');
}
