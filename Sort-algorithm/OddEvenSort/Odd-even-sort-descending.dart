void oddEvenSort(List<int> list) {
  int n = list.length;
  bool isSorted = false;

  while (!isSorted) {
    isSorted = true;
    for (int i = 1; i <= n - 2; i = i + 2) {
      if (list[i] < list[i + 1]) {
        int temp = list[i];
        list[i] = list[i + 1];
        list[i + 1] = temp;
        isSorted = false;
      }
    }
    for (int i = 0; i <= n - 2; i = i + 2) {
      if (list[i] < list[i + 1]) {
        int temp = list[i];
        list[i] = list[i + 1];
        list[i + 1] = temp;
        isSorted = false;
      }
    }
  }
  return;
}

int main() {
  List<int> arr = [3, 7, 4, 8, 6, 2, 1, 5, -4];
  print("Mảng chưa sắp xếp là : $arr");
  oddEvenSort(arr);

  print("Mảng sau khi sắp xếp: $arr");
  return 0;
}
