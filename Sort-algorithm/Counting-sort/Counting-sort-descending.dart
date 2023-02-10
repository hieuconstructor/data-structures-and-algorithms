int main(List<String> args) {
  print("--------------Array 1---------------");
  var arr = [6, 5, 12, 10, 9, 1];

  print("Unsorted array: ");
  print(arr);

  countingSortDescending(arr, 12);
  print("Sorted array: ");
  print(arr);

  print("--------------Array 2---------------");
  var arr1 = [6, 7, 1, 1, 5, 5, 6, 7, 9];

  print("Unsorted array: ");
  print(arr1);

  countingSortDescending(arr1, 9);
  print("Sorted array: ");
  print(arr1);
  return 0;
}

void countingSortDescending(List<int> arr, int maxValue) {
  List<int> count = List.filled(maxValue + 1, 0);
  count.fillRange(0, count.length, 0);

  for (int i = 0; i < arr.length; i++) {
    count[arr[i]]++;
  }

  int z = arr.length - 1;
  for (int i = 0; i <= maxValue; i++) {
    for (int j = 0; j < count[i]; j++) {
      arr[z--] = i;
    }
  }
}
