void main(List<String> args) {
  List<int> numbers = [0, 10, 5, 15, 20, 35, 25, 40, 30];

  print("Unsorted arr: ");
  print(numbers);

  print("Sorted arr: ");
  insertSort(numbers);
  print(numbers);
}

// Insertion sort
// Sắp xếp từ nhỏ đến lớn
void insertSort(List list) {
  for (int i = 1; i < list.length; i++) {
    int x = list[i];
    int j = i - 1;
    while (j >= 0 && list[j] < x) {
      list[j + 1] = list[j];
      j--;
    }
    list[j + 1] = x;
  }
}
