void main(List<String> args) {
  List<int> numbers = [8, 9, 5, 15, 4, 35, 25, 40, 30];
  List<int> a = [6, 5, 2, 3, 8, 14, 56, 4, 89];

  // Mảng numbers

  int n = numbers.length;
  print("Mảng numbers chưa sắp xếp: ");
  print(numbers);

  print('');
  print("Mảng numbers sau sắp xếp tăng dần là: ");
  quickSort(numbers, 0, n - 1);
  print(numbers);

  // Mảng a

  int m = a.length;
  print("");
  print("Mảng numbers chưa sắp xếp: ");
  print(a);

  print('');
  print("Mảng numbers sau sắp xếp tăng dần là: ");
  quickSort(a, 0, m - 1);
  print(a);
}

// Hàm nhận phần tử cuối cùng làm chốt,
// đặt các phần tử nhỏ hơn chốt ở trước
// và lớn hơn ở sau nó
int partition(List list, int low, int high) {
  int pivot = list[high];
  int i = low - 1;

  for (int j = low; j < high; j++) {
    if (list[j] <= pivot) {
      i++;
      swap(list, i, j);
    }
  }
  swap(list, i + 1, high);
  return i + 1;
}

void swap(List list, int i, int j) {
  int temp = list[i];
  list[i] = list[j];
  list[j] = temp;
}

void quickSort(List list, int low, int high) {
  if (low < high) {
    // pi  là chỉ mục, arr [pi] là vị trí của chốt
    int pi = partition(list, low, high);
    quickSort(list, low, pi - 1); // trước pi
    quickSort(list, pi + 1, high); // sau pi
  }
}
