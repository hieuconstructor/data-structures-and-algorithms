int main(List<String> args) {
  print("--------------Array 1---------------");
  var arr = [6, 5, 12, 10, 9, 1];

  print("Unsorted array: ");
  print(arr);

  countingSort(arr, 12);
  print("Sorted array: ");
  print(arr);

  print("--------------Array 2---------------");
  var arr1 = [6, 7, 1, 1, 5, 5, 6, 7, 9];

  print("Unsorted array: ");
  print(arr1);

  countingSort(arr1, 9);
  print("Sorted array: ");
  print(arr1);
  return 0;
}

void countingSort(List list, int maxValue) {
  List count = List.filled(maxValue + 1, 0);
  for (int i = 0; i <= maxValue; i++) {
    count[i] = 0;
  }
  for (int i = 0; i < list.length; i++) {
    count[list[i]]++;
  }
  int j = 0;
  for (int i = 0; i <= maxValue; i++) {
    for (int k = 0; k < count[i]; k++) {
      list[j++] = i;
    }
  }
}
