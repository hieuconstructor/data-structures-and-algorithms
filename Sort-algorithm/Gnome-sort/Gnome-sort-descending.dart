void gnomeSortDescending(List<int> arr) {
  int i = 1;
  int j = 2;
  int n = arr.length;
  while (i < n) {
    if (arr[i - 1] >= arr[i]) {
      i = j;
      j++;
    } else {
      int temp = arr[i - 1];
      arr[i - 1] = arr[i];
      arr[i] = temp;
      i--;
      if (i == 0) {
        i = j;
        j++;
      }
    }
  }
}

void main() {
  List<int> arr = [34, 2, 10, -9, 5, 4, 7, 2, 11];
  gnomeSortDescending(arr);
  print(arr);
}
