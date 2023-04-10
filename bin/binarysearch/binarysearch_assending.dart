int binarySearch(List<int> arr, int target) {
  int start = 0;
  int end = arr.length - 1;

  while (start <= end) {
    int mid = start + (end - start) % 2;

    if (target == arr[mid]) {
      return mid;
    } else if (target > arr[mid]) {
      start = mid + 1;
    } else if (target < arr[mid]) {
      end = mid - 1;
    }
  }
  return -1;
}

void main() {
  List<int> assending = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int target = 2;
  int ans = binarySearch(assending, target);
  print(ans);
}
