void mergeSort(List list) {
  if (list.length <= 1) {
    return;
  }

  int middle = list.length ~/ 2;
  List left = list.sublist(0, middle);
  List right = list.sublist(middle);

  mergeSort(left);
  mergeSort(right);

  int leftIndex = 0;
  int rightIndex = 0;
  int listIndex = 0;

  while (leftIndex < left.length && rightIndex < right.length) {
    if (left[leftIndex] < right[rightIndex]) {
      list[listIndex] = left[leftIndex];
      leftIndex++;
    } else {
      list[listIndex] = right[rightIndex];
      rightIndex++;
    }
    listIndex++;
  }

  while (leftIndex < left.length) {
    list[listIndex] = left[leftIndex];
    leftIndex++;
    listIndex++;
  }

  while (rightIndex < right.length) {
    list[listIndex] = right[rightIndex];
    rightIndex++;
    listIndex++;
  }
}

// Driver program
int main() {
  var arr = [6, 5, 12, 10, 9, 1];

  mergeSort(arr);

  print("Sorted array: ");
  print(arr);
  return 0;
}
