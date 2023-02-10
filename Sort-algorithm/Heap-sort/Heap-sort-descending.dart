void sort(List<int> list) {
  int n = list.length;
  for (int i = n ~/ 2 - 1; i >= 0; i--) {
    heapfify(list, n, i);
  }

  for (int i = n - 1; i >= 0; i--) {
    int temp = list[0];
    list[0] = list[i];
    list[i] = temp;

    heapfify(list, i, 0);
  }
}

void heapfify(List<int> list, int n, int i) {
  int smallest = i;
  int l = 2 * i + 1;
  int r = 2 * i + 2;

  if (l < n && list[l] < list[smallest]) {
    smallest = l;
  }

  if (r < n && list[r] < list[smallest]) {
    smallest = r;
  }

  if (smallest != i) {
    int temp = list[i];
    list[i] = list[smallest];
    list[smallest] = temp;

    heapfify(list, n, smallest);
  }
}

int main() {
  List<int> arr = [4, 10, 3, 5, 1];
  print("Mảng ban đầu :");
  print(arr);
  print("Mảng sau khi sắp xếp : ");
  sort(arr);
  print(arr);
  return 0;
}
