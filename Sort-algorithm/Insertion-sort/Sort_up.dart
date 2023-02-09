void main(List<String> args) {
  List<int> numbers = [0, 10, 5, 15, 20, 35, 25, 40, 30];

  insertSort(numbers);
  printListNumber(numbers);
}

// Insertion sort
// Sắp xếp từ nhỏ đến lớn
insertSort(List<int> numbers) {
  int i, j, temp;
  for (i = 1; i < numbers.length; i++) {
    j = i - 1;
    temp = numbers[i];
    while (numbers[j] < temp && j >= 0) {
      numbers[j + 1] = numbers[j];
      j--;
    }
    numbers[j + 1] = temp;
  }
  return numbers;
}

//Ham in mang
void printListNumber(List<int> numbers) {
  int i;
  for (i = 0; i < numbers.length; i++) {
    print(numbers[i]);
  }
}
//Đang còn một số lỗi