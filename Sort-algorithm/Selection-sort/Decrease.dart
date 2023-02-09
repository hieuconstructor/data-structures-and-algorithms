void main(List<String> args) {
  List<int> numbers = [8, 9, 5, 15, 4, 35, 25, 40, 30];
  List<int> a = [6, 5, 2, 3, 8, 14, 56, 4, 89];

  // Mảng numbers

  print("Mảng numbers chưa sắp xếp: ");
  print(numbers);

  print('');
  print("Mảng numbers sau sắp xếp tăng dần là: ");
  selectSort(numbers);
  print(numbers);

  // Mảng a

  print("");
  print("Mảng numbers chưa sắp xếp: ");
  print(a);

  print('');
  print("Mảng numbers sau sắp xếp tăng dần là: ");
  selectSort(a);
  print(a);
}

// Selection sort
// Sắp xếp giảm dần
void selectSort(List<int> numbers) {
  int n = numbers.length;
  int i;
  for (i = 1; i < numbers.length; i++) {
    for (int i = 0; i < n - 1; i++) {
      // Tìm phần tử lớn nhất trong mảng chưa được sắp xếp
      int max = i;
      for (int j = i + 1; j < n; j++) {
        if (numbers[j] > numbers[max]) max = j;
      }

      // Hoán đổi phần tử lớn nhất và phần tử đầu tiên
      swap(numbers, max, i);
    }
  }
}

void swap(List list, int max, int i) {
  int temp = list[max];
  list[max] = list[i];
  list[i] = temp;
}

//Ham in mang
void printListNumber(List<int> numbers) {
  int i;
  for (i = 0; i < numbers.length; i++) {
    print(numbers[i]);
  }
}
