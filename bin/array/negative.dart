void main() {
  List<int> numbers = [-5, 2, -8, 0, 10, 7, -3, 6, -1];
  List<int> negativeNumbers = numbers.where((number) => number < 0).toList();

  print(negativeNumbers);
}
