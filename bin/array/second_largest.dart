void main() {
  List<int> numbers = [13, 17, 19, 23, 29, 31, 37, 41, 43];
  int largest = numbers[0];
  int secondLargest = numbers[0];

  for (var number in numbers) {
    if (number > largest) {
      secondLargest = largest;
      largest = number;
    } else if (number > secondLargest) {
      secondLargest = number;
    }
  }

  print('secondLargest = $secondLargest');
}
