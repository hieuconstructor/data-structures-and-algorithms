void main(List<String> args) {
  List<int> numbers = [0, 10, 5, 15, 20, 35, 25, 40, 30];

  // Mảng numbers

  print("Mảng numbers chưa sắp xếp: ");
  print(numbers);

  print('');
  print("Mảng numbers sau sắp xếp giảm dần là: ");
  insertSortDESC(numbers);
  print(numbers);
}

// Bubble sort
// Sort decrease
insertSortDESC(List<int> numbers) {
  int i, temp;
  for (i = 0; i < numbers.length - 0; i++) {
    temp = numbers[0];
    for (int j = i + 1; j < numbers.length; j++) {
      if (numbers[i] < numbers[j]) {
        temp = numbers[j];
        numbers[j] = numbers[i];
        numbers[i] = temp;
      }
    }
  }
  return numbers;
}
