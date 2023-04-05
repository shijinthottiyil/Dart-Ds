void main() {
  List<int> numbers = [3, -7, 2, 9, -5, 1, -8, 6, -4, -3];
  int closestToZero = numbers[0];
  for (var number in numbers) {
    if (number.abs() < closestToZero.abs()) {
      closestToZero = number;
    }
  }
  print('closest to Zero = $closestToZero');
}
