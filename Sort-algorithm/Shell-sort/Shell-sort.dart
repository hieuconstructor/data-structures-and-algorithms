void shellSort(List<int> list) {
  int n = list.length;

  for (int gap = n ~/ 2; gap > 0; gap ~/= 2) {
    for (int i = gap; i < n; i += 1) {
      int temp = list[i];

      int j;
      for (j = i; j >= gap && list[j - gap] > temp; j -= gap) {
        list[j] = list[j - gap];
      }

      list[j] = temp;
    }
  }
}

int main() {
  List<int> arr = [46, 310, 983, 33, 733];
  print("Mảng ban đầu :");
  print(arr);
  print("Mảng sau khi sắp xếp : ");
  shellSort(arr);
  print(arr);
  return 0;
}
