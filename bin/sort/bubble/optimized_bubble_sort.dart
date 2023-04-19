void main() {
  List<int> numbers = [2, 4, 6, 10, 15];
  print("before sorting $numbers");
  int n = numbers.length;
  for (int i = 0; i < n - 1; i++) {
    int flag = 0;
    for (int j = 0; j < n - 1 - i; j++) {
      if (numbers[j] > numbers[j + 1]) {
        flag = 1;
        int temp = numbers[j];
        numbers[j] = numbers[j + 1];
        numbers[j + 1] = temp;
      }
    }
    if (flag == 0) {
      break;
    }
  }
  print("after sort $numbers");
}
