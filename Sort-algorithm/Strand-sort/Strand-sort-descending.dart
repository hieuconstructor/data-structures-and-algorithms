void strandSortDescending(List<int> arr) {
  for (int i = 0; i < arr.length; i++) {
    int j = i;
    while (j > 0 && arr[j - 1] < arr[j]) {
      int temp = arr[j];
      arr[j] = arr[j - 1];
      arr[j - 1] = temp;
      j--;
    }
  }
}

void main() {
  List<int> arr = [34, 2, 10, -9, 5, 4, 7, 2, 11];

  print("Mảng chưa sắp xếp là : $arr");
  strandSortDescending(arr);

  print("Mảng sau khi sắp xếp: $arr");
}
