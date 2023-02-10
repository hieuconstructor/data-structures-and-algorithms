void cocktailSort(List<int> arr) {
  int left = 0;
  int right = arr.length - 1;
  while (left < right) {
    for (int i = left; i < right; i++) {
      if (arr[i] > arr[i + 1]) {
        int temp = arr[i];
        arr[i] = arr[i + 1];
        arr[i + 1] = temp;
      }
    }
    right--;
    for (int i = right; i > left; i--) {
      if (arr[i - 1] > arr[i]) {
        int temp = arr[i];
        arr[i] = arr[i - 1];
        arr[i - 1] = temp;
      }
    }
    left++;
  }
}

void main() {
  List<int> arr = [3, 7, 4, 8, 6, 2, 1, 5];

  print("Mảng chưa sắp xếp là : $arr");
  cocktailSort(arr);

  print("Mảng sau khi sắp xếp: $arr");
}
