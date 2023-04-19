void main() {
  List<int> numbers = [7, 8, 3, 1, 2];
  int n = numbers.length;
  for (int i = 0; i < n - 1; i++) {
    int min = i;
    for (int j = i + 1; j < n; j++) {
      if (numbers[j] < numbers[min]) {
        min = j;
      }
    }
    int temp = numbers[min];
    numbers[min] = numbers[i];
    numbers[i] = temp;
  }
  print(numbers);
}
