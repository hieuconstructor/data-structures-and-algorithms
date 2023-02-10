void timSort(List<int> arr) {
  int n = arr.length;

  for (int i = 0; i < n;) {
    int j = i + 1;
    if (j == n) break;

    if (arr[j] >= arr[j - 1]) {
      while (j < n && arr[j] >= arr[j - 1]) {
        j++;
      }
      timMerge(arr, i, j - 1);
    } else {
      while (j < n && arr[j] < arr[j - 1]) {
        j++;
      }
      List<int> sublist = arr.sublist(i, j).reversed.toList();
      arr.replaceRange(i, j, sublist);
      timMerge(arr, i, j - 1);
    }
    i = j;
  }
}

void timMerge(List<int> arr, int left, int right) {
  int length = right - left + 1;
  int minRun = 32;
  if (length < minRun) {
    insertionSort(arr, left, right);
    return;
  }

  int mid = (left + right) ~/ 2;
  timMerge(arr, left, mid);
  timMerge(arr, mid + 1, right);

  int i = left;
  int j = mid + 1;
  int k = 0;
  List<int> temp = List.filled(length, 0);

  while (i <= mid && j <= right) {
    if (arr[i] <= arr[j]) {
      temp[k] = arr[i];
      i++;
    } else {
      temp[k] = arr[j];
      j++;
    }
    k++;
  }

  while (i <= mid) {
    temp[k] = arr[i];
    i++;
    k++;
  }

  while (j <= right) {
    temp[k] = arr[j];
    j++;
    k++;
  }

  for (int l = 0; l < length; l++) {
    arr[left + l] = temp[l];
  }
}

void insertionSort(List<int> arr, int left, int right) {
  for (int i = left + 1; i <= right; i++) {
    int key = arr[i];
    int j = i - 1;
    while (j >= left && arr[j] > key) {
      arr[j + 1] = arr[j];
      j = j - 1;
    }
    arr[j + 1] = key;
  }
}

void main() {
  List<int> arr = [38, 27, 43, 3, 9, 82, 10];
  print('Before sorting: $arr');
  timSort(arr);
  print('After sorting: $arr');
}


//Đang lỗi @_@