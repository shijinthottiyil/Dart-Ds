// Checking if an array contains a particular element:

//if the array is unsorted
void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  int target = 4;
  for (int i = 0; i < numbers.length; i++) {
    int number = numbers[i];
    if (number == target) {
      print("target found at index $i");
      return;
    }
  }
}
