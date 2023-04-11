int binarySearch(List<int> arr, int target) {
  int start = 0;
  int end = arr.length - 1;
  bool isAssending;
  arr[start] < arr[end] ? isAssending = true : isAssending = false;
  while (start <= end) {
    int middle = start + (end - start) % 2;
    if (arr[middle] == target) {
      return middle;
    } else if (isAssending) {
      if (target < arr[middle]) {
        end = middle - 1;
      } else {
        start = middle + 1;
      }
    } else if (!isAssending) {
      if (target < arr[middle]) {
        start = middle + 1;
      } else {
        end = middle - 1;
      }
    }
  }
  return -1;
}

void main() {
  List<int> numbers = [5, 4, 3, 2, 1];
  int ans = binarySearch(numbers, 4);
  print(ans);
}
