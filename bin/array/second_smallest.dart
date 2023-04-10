void main() {
  List<int> numbers = [5, 8, 1, 3, 9, 4, 2, 7, 6];
  int smallest = numbers[0];
  int secondSmallest = numbers[0];

  numbers.forEach((number) {
    if (number < smallest) {
      secondSmallest = smallest;
      smallest = number;
    } else if (number < secondSmallest) {
      secondSmallest = number;
    }
  });

  print('second smallest = $secondSmallest');
}
