int ternarySearch(List<int> arr, int target) {
  int left = 0;
  int right = arr.length - 1;
  while (right >= left) {
    int mid1 = left + (right - left) ~/ 3;
    int mid2 = right - (right - left) ~/ 3;
    if (arr[mid1] == target) {
      return mid1;
    }
    if (arr[mid2] == target) {
      return mid2;
    }
    if (target < arr[mid1]) {
      right = mid1 - 1;
    } else if (target > arr[mid2]) {
      left = mid2 + 1;
    } else {
      left = mid1 + 1;
      right = mid2 - 1;
    }
  }

  return -1;
}

main() {
  print("--------------Array 1---------------");
  List<int> list = [0, 7, 5, 15, 20, 35, 25, 40, 30, 17, 16, 27, 36];
  list.sort((a, b) => a.compareTo(b));
  print(list);

  int result = ternarySearch(list, 5);

  print(result);
}
//Đã đúng
