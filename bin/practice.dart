void maxHeapify(List<int> numbers, int size, int i) {
  int largest = i;
  int left = 2 * i + 1;
  int right = 2 * i + 2;

  if (left < size && numbers[left] < numbers[largest]) {
    largest = left;
  }
  if (right < size && numbers[right] < numbers[largest]) {
    largest = right;
  }
  if (largest != i) {
    int temp = numbers[largest];
    numbers[largest] = numbers[i];
    numbers[i] = temp;
    maxHeapify(numbers, size, largest);
  }
}

void heapsort(List<int> numbers, int size) {
  for (int i = (size ~/ 2) - 1; i >= 0; i--) {
    maxHeapify(numbers, size, i);
  }
  for (int i = size - 1; i >= 1; i--) {
    int temp = numbers[i];
    numbers[i] = numbers[0];
    numbers[0] = temp;
    maxHeapify(numbers, i, 0);
  }
}

void main() {
  List<int> numbers = [10, 5, 12, 4, 9, 11];
  heapsort(numbers, numbers.length);
  print(numbers);
}
