void main() {
  List<int> numbers = [7, 4, 10, 8, 3, 1];
  int n = numbers.length;
  print("array before sorting: $numbers");
  for (int i = 0; i < n - 1; i++) {
    int min = i;
    for (int j = i + 1; j < n; j++) {
      if (numbers[j] < numbers[min]) {
        min = j;
      }
    }
    if (min != i) {
      int temp = numbers[i];
      numbers[i] = numbers[min];
      numbers[min] = temp;
    }
  }
  print("array after sorting: $numbers");
}
