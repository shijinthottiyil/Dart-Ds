void insert(List<int> numbers, int number) {
  numbers.add(number);
  int i = numbers.length - 1;
  while (i > 0) {
    int parent = (i - 1) ~/ 2;
    if (numbers[parent] < numbers[i]) {
      int temp = numbers[parent];
      numbers[parent] = numbers[i];
      numbers[i] = temp;
      i = parent;
    } else {
      break;
    }
  }
}

void main() {
  List<int> numbers = [60, 50, 40, 30, 20, 10];
  insert(numbers, 15);
  insert(numbers, 20);
  print(numbers);
}
