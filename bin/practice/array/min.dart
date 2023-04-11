//Finding the minimum element in an array:

void main() {
  List<int> numbers = [10, 20, 30, 40, 50];
  int min = numbers[0];
  for (int number in numbers) {
    if (number < min) {
      min = number;
    }
  }
  print(min);
}
