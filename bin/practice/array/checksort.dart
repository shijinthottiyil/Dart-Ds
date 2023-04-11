// Checking if an array is sorted in ascending order:
void main() {
  List<int> numbers = [5, 4, 3, 2, 1];
  int start = numbers[0];
  int end = numbers[numbers.length - 1];
  if (start < end) {
    print("assending array");
  } else {
    print("descending array");
  }
}
