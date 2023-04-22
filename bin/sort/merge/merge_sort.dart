void mergeSort(List<int> arr, int low, int high) {
  if (low < high) {
    int mid = (low + high) ~/ 2;
    mergeSort(arr, low, mid);
    mergeSort(arr, mid + 1, high);
    merge(arr, low, mid, high);
  }
}

void merge(List<int> arr, int low, int mid, int high) {
  int leftSize = mid - low + 1;
  int rightSize = high - mid;

  List<int> leftArr = List.filled(leftSize, 0);
  List<int> rightArr = List.filled(rightSize, 0);

  for (int i = 0; i < leftSize; i++) {
    leftArr[i] = arr[low + i];
  }

  for (int j = 0; j < rightSize; j++) {
    rightArr[j] = arr[mid + 1 + j];
  }

  int i = 0;
  int j = 0;
  int k = low;

  while (i < leftSize && j < rightSize) {
    if (leftArr[i] < rightArr[j]) {
      arr[k] = leftArr[i];
      i++;
      k++;
    } else {
      arr[k] = rightArr[j];
      j++;
      k++;
    }
  }

  while (i < leftSize) {
    arr[k] = leftArr[i];
    i++;
    k++;
  }
  while (j < rightSize) {
    arr[k] = rightArr[j];
    j++;
    k++;
  }
}

void main() {
  List<int> numbers = [5, 4, 3, 2, 1];
  mergeSort(numbers, 0, numbers.length - 1);
  print(numbers);
}
