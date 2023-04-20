void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  for (int i = 0; i < 3; i++) {
    int temp = numbers[0];
    for (int j = 0; j < numbers.length - 1; j++) {
      numbers[j] = numbers[j + 1];
    }
    numbers[numbers.length - 1] = temp;
  }
  print(numbers);
}
