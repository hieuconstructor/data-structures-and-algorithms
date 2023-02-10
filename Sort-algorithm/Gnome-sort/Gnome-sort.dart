void gnomeSort(List<int> arr) {
  int index = 0;

  while (index < arr.length) {
    if (index == 0 || arr[index] >= arr[index - 1]) {
      index++;
    } else {
      int temp = arr[index];
      arr[index] = arr[index - 1];
      arr[index - 1] = temp;
      index--;
    }
  }
}

void main() {
  List<int> arr = [34, 2, 10, -9, 5, 4, 7, 2, 11];

  print("Array before sorting: ");
  print(arr);

  gnomeSort(arr);

  print("Array after sorting: ");
  print(arr);
}
