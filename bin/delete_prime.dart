void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  List<int> prime = [];
  for (var number in numbers) {
    int freq = 0;
    for (int i = 1; i <= number; i++) {
      if (number % i == 0) {
        freq++;
      }
    }
    if (freq == 2) {
      prime.add(number);
    }
  }
  numbers.removeWhere((number) {
    return prime.contains(number);
  });
  print(numbers);
}
