void main() {
  List<int> numbers = [5, 3, 7, 1, 9, 3, 5, 8, 1, 7, 5, 9, 2, 8];
  numbers.sort();
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] == numbers[i + 1]) {
      for (int j = i; j < numbers.length - 1; j++) {
        numbers[j] = numbers[j + 1];
      }
      numbers.length = numbers.length - 1;
      i = i--;
    }
  }
  print(numbers);
}
