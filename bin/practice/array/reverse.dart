//Reversing an array:
void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  List<int> numberReversed = numbers.reversed.toList();
  numbers = numberReversed;
  print(numbers);
}
