void main() {
  List<int> numbers = [5, 4, 10, 1, 6, 2];
  print("array before sorting $numbers");
  int n = numbers.length;
  for (int i = 1; i < n; i++) {
    int temp = numbers[i];
    int j = i - 1;
    while (j >= 0 && numbers[j] > temp) {
      numbers[j + 1] = numbers[j];
      j--;
    }
    numbers[j + 1] = temp;
  }
  print("array after sorting: $numbers");
}
