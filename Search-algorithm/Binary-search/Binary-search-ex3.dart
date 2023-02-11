/* Cho hai mảng đã sắp xếp tăng dần và có cùng độ dài. 
Viết chương trình tìm phần tử lớn nhất trong các phần tử 
tương ứng của hai mảng, sử dụng thuật toán tìm kiếm nhị phân.*/

import 'dart:math';

int findMaxCommonElement(List arr1, List arr2) {
  int n = arr1.length;
  int maxCommonElement = -1;

  for (int i = 0; i < n; i++) {
    int target = arr1[i];
    int left = 0, right = n - 1;
    int idx = -1;
    while (left <= right) {
      int mid = ((left + right) / 2).floor();
      if (arr2[mid] == target) {
        idx = mid;
        break;
      } else if (arr2[mid] < target) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }
    if (idx != -1 && arr2[idx] > maxCommonElement) {
      maxCommonElement = arr2[idx];
    }
  }

  return maxCommonElement;
}

main() {
  List list = [];
  List list2 = [];

  for (var i = 0; i < 10; i++) {
    var rng = Random().nextInt(50);
    if (i < 5) {
      list.add(rng);
    } else {
      list2.add(rng);
    }
  }
  list.sort();
  list2.sort();

  print(list);
  print(list2);

  int result = findMaxCommonElement(list, list2);
  print(result);
}
