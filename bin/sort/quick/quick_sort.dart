import 'dart:math';

void main() {
  var random = Random();
  var numbers = List.generate(10, (index) => random.nextInt(100) + 1);
  print(numbers);

  sort(numbers, 0, numbers.length - 1);
  print(numbers);
}

void sort(List<int> numbers, int low, int high) {
  if (low < high) {
    int start = low;
    int end = high;
    int mid = start + (end - start) ~/ 2;
    int pivot = numbers[mid];
    while (start <= end) {
      while (numbers[start] < pivot) {
        start++;
      }
      while (numbers[end] > pivot) {
        end--;
      }
      if (start <= end) {
        int temp = numbers[start];
        numbers[start] = numbers[end];
        numbers[end] = temp;
        start++;
        end--;
      }
    }
    sort(numbers, low, end);
    sort(numbers, start, high);
  }
}
