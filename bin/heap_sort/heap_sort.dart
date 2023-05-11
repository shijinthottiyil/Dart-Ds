void maxHeapify(List<int> array, int size, int i) {
  int largest = i;
  int left = (2 * i) + 1;
  int right = (2 * i) + 2;

  if (left < size && array[left] > array[largest]) {
    largest = left;
  }
  if (right < size && array[right] > array[largest]) {
    largest = right;
  }
  if (largest != i) {
    int temp = array[largest];
    array[largest] = array[i];
    array[i] = temp;
    maxHeapify(array, size, largest);
  }
}

void heapsort(List<int> array, int size) {
  for (int i = (size ~/ 2) - 1; i >= 0; i--) {
    maxHeapify(array, size, i);
  }
  for (int i = size - 1; i >= 1; i--) {
    int temp = array[0];
    array[0] = array[i];
    array[i] = temp;
    maxHeapify(array, i, 0);
  }
}

void main() {
  List<int> numbers = [7, 9, 3, 6, 5, 1, 8, 2, 4, 0];
  heapsort(numbers, numbers.length);
  print(numbers);
}
