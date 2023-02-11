import 'dart:math';

int jumpSearch(List<int> arr, int x) {
  int n = arr.length;
  int step = sqrt(n).floor();
  int prev = 0;
  while (arr[min(step, n) - 1] < x) {
    prev = step;
    step += sqrt(n).floor();
    if (prev >= n) return -1;
  }
  while (arr[prev] < x) {
    prev++;
    if (prev == min(step, n)) return -1;
  }
  if (arr[prev] == x) return prev;
  return -1;
}

void main() {
  List<int> arr = [7, 5, 15, 20, 35, 25, 40, 30, 17, 16, 27, 36];
  arr.sort((a, b) => a.compareTo(b));
  int x = 35;

  int index = jumpSearch(arr, x);
  if (index == -1) {
    print("Phần tử không tồn tại trong mảng");
  } else {
    print("Phần tử $x được tìm thấy tại vị trí $index");
  }

  print("--------------Show position of all number---------------");
  List<int> Vitri = [];
  for (int i = 0; i < arr.length; i++) {
    int result = jumpSearch(arr, arr[i]);
    Vitri.add(result);
  }
  print(Vitri);
}

//Đã đúng