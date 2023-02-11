import 'dart:math';

int exponentialSearch(List arr, double target) {
  if (arr[0] == target) {
    return 0;
  }
  int i = 1;
  while (i < arr.length && arr[i] <= target) {
    i = i * 2;
  }
  int left = i ~/ 2;
  int right = min(i, arr.length - 1);
  return binarySearch(arr, target, left, right);
}

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
  int result = exponentialSearch(list, x);
  if (result == -1) {
    print("Không tìm thấy vị trí của $x trong mảng \n");
  } else {
    print("Vị trí của $x trong mảng là : $result \n");
  }
}

int main() {
  print("--------------Show position of one number---------------\n");
  List list = [1, 3, 6, 7, 9, 11, 14, 33, 36];

  double x = 2;
  showPosition(list, x);

  x = 11;
  showPosition(list, x);

  return 0;
}

//Đã đúng