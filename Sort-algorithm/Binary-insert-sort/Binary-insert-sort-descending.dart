void binaryInsertSort(List list) {
  for (int i = 1; i < list.length; i++) {
    int x = list[i];
    int left = 0;
    int right = i - 1;

    while (left <= right) {
      int middle = (left + right) ~/ 2;
      if (x > list[middle]) {
        right = middle - 1;
      } else {
        left = middle + 1;
      }
    }

    for (int j = i - 1; j >= left; j--) {
      list[j + 1] = list[j];
    }
    list[left] = x;
  }
}

// Driver program
int main() {
  print("--------------Array 1---------------");
  var arr = [6, 5, 12, 10, 9, 1];

  print("Unsorted array: ");
  print(arr);

  binaryInsertSort(arr);
  print("Sorted array: ");
  print(arr);

  print("--------------Array 2---------------");
  var arr1 = [6, 7, 1, 1, 5, 5, 6, 7, 9];

  print("Unsorted array: ");
  print(arr1);

  binaryInsertSort(arr1);
  print("Sorted array: ");
  print(arr1);
  return 0;
}
