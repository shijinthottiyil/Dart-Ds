void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> multiplesOfFour =
      numbers.where((number) => number % 4 == 0).toList();
  int sum = 0;
  numbers.removeWhere((number) {
    return multiplesOfFour.contains(number);
  });
  print('list after removing multiples of 4');
  print(numbers);
  for (var number in numbers) {
    sum = sum + number;
  }
  print('sum=$sum');
}
