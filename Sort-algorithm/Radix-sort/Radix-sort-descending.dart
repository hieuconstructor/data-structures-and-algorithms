int getMax(List list, int n) {
  int max = list[0];
  for (int i = 1; i < n; i++) {
    if (list[i] > max) max = list[i];
  }
  return max;
}

void radixSort(List<int> list, int n) {
  int max = getMax(list, n);

  // Do counting sort for every digit
  for (int exp = 1; max ~/ exp > 0; exp *= 10) {
    countSortDescending(list, exp);
  }
}

void countSortDescending(List list, int exp) {
  int n = list.length;
  List<int> output = List.filled(n, 0);
  List<int> count = List.filled(10, 0);

  // Store count of occurrences in count[]
  for (int i = 0; i < n; i++) {
    count[(list[i] ~/ exp) % 10]++;
  }

  // Change count[i] so that count[i] now contains actual
  // position of this digit in output[]
  for (int i = 1; i < 10; i++) {
    count[i] += count[i - 1];
  }

  // Build the output array
  for (int i = 0; i < n; i++) {
    output[count[(list[i] ~/ exp) % 10] - 1] = list[i];
    count[(list[i] ~/ exp) % 10]--;
  }

  // Copy the output array to arr[], so that arr[] now
  // contains sorted numbers according to current digit
  for (int i = 0; i < n; i++) {
    list[i] = output[i];
  }
}

int main() {
  List<int> arr = [6, 11, 12, 19, 20];
  int n = arr.length;
  print("Mảng ban đầu :");
  print(arr);
  print("Mảng sau khi sắp xếp : ");
  radixSort(arr, n);
  print(arr);
  return 0;
}

//Radix sort đang sai
