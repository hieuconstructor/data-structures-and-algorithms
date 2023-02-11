int binarySearch(List arr, double target, int left, int right) {
  while (left <= right) {
    int mid = left + (right - left) ~/ 2;
    if (arr[mid] == target) {
      return mid;
    }
    if (arr[mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }
  return -1;
}

void showPosition(List list, double x) {
  int result = binarySearch(list, x, 0, list.length);
  if (result == -1) {
    print("Không tìm thấy vị trí của $x trong mảng \n");
  } else {
    print("Vị trí của $x trong mảng là : $result \n");
  }
}

main() {
  print("--------------Với số tự nhiên---------------");
  List list = [1, 3, 6, 7, 9, 11, 14, 33, 36];
  list.sort();

  double x = 5;

  print("Tìm vị trí của số $x ");
  showPosition(list, x);

  x = 9;
  print("\nTìm vị trí của số $x ");
  showPosition(list, x);

  print("--------------Với số thực---------------");
  list = [0.1, 0.3, 0.6, 0.7, 0.9, 0.11, 0.14, 0.33, 0.36];

  x = 0.5;

  print("Tìm vị trí của số $x ");
  showPosition(list, x);

  x = 0.9;
  print("\nTìm vị trí của số $x ");
  showPosition(list, x);
}

//ĐÃ ĐÚNG