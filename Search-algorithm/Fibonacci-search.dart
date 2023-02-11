import 'dart:math';

int fibonacciSearch(List<int> arr, int target) {
  int n = arr.length;
  int fib2 = 0;
  int fib1 = 1;
  int fib = fib1 + fib2;

  while (fib < n) {
    fib2 = fib1;
    fib1 = fib;
    fib = fib1 + fib2;
  }

  int offset = -1;
  while (fib > 1) {
    int i = min(offset + fib2, n - 1);
    if (arr[i] < target) {
      fib = fib1;
      fib1 = fib2;
      fib2 = fib - fib1;
      offset = i;
    } else if (arr[i] > target) {
      fib = fib2;
      fib1 = fib1 - fib2;
      fib2 = fib - fib1;
    } else {
      return i;
    }
  }

  if (fib1 == 1 && arr[offset + 1] == target) {
    return offset + 1;
  }

  return -1;
}

void main() {
  List<int> arr = [0, 7, 5, 15, 20, 35, 25, 40, 30, 17, 16, 27, 36];
  arr.sort();
  int target = 8;
  int index = fibonacciSearch(arr, target);
  if (index == -1) {
    print("Không tìm thấy $target trong mảng.");
  } else {
    print("Tìm thấy $target tại vị trí $index trong mảng.");
  }
}

//Đã đúng
