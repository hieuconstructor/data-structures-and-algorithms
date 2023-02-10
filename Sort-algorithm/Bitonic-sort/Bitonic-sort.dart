void bitonicSort(List<int> arr, int low, int cnt, bool dir) {
  if (cnt > 1) {
    int k = cnt ~/ 2;
    for (int i = low; i < low + k; i++) {
      if ((dir == (arr[i] > arr[i + k])) == true) {
        int temp = arr[i];
        arr[i] = arr[i + k];
        arr[i + k] = temp;
      }
    }
    bitonicSort(arr, low, k, dir);
    bitonicSort(arr, low + k, k, dir);
  }
}

void bitonicMerge(List<int> arr, int low, int cnt, bool dir) {
  if (cnt > 1) {
    int k = cnt ~/ 2;
    bitonicSort(arr, low, k, dir);
    bitonicSort(arr, low + k, k, dir);
    bitonicMerge(arr, low, cnt, dir);
  }
}

void sort(List<int> arr) {
  bitonicMerge(arr, 0, arr.length, true);
}

void main() {
  List<int> arr = [3, 7, 4, 8, 6, 2];

  sort(arr);

  print("Sorted array: $arr");
}


//Chưa đúng 