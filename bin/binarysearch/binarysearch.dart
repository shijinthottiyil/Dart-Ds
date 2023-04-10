int binarySearchs(List<int> arr, int target) {
  int start = 0;
  int end = arr.length - 1;
  bool isAssending;

  if (arr[start] < arr[end]) {
    isAssending = true;
  } else {
    isAssending = false;
  }

  while (start <= end) {
    int middle = start + (end - start) % 2;

    if (target == arr[middle]) {
      return middle;
    } else if (isAssending) {
      if (target > arr[middle]) {
        start = middle + 1;
      } else {
        end = middle - 1;
      }
    } else {
      if (target > arr[middle]) {
        end = middle - 1;
      } else {
        start = middle + 1;
      }
    }
  }
  return -1;
}

void main() {
  List<int> nums = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0];

  int target = 10;
  int ans = binarySearchs(nums.reversed.toList(), target);
  print(ans);
}
