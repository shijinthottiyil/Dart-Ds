//Finding the maximum element in an array:

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  int max = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > max) {
      max = numbers[i];
    }
  }
  print(max);
}
