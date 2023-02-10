void bucketSort(List<double> list) {
  int n = list.length;

  List<List<double>> buckets = List.generate(n, (_) => []);

  // Phân phối các phần tử của mảng đầu vào
  // vào các bucket
  for (int j = 0; j < list.length; j++) {
    double element = list[j];
    int index = (element * n).floor();
    buckets[index].add(element);
  }

  // Sắp xếp các phần tử trong mỗi bucket sử dụng insertion sort
  for (int i = 0; i < n; i++) {
    insertionSort(buckets[i]);
  }

  // Ghép các bucket đã sắp xếp lại thành mảng đầu vào
  int index = 0;
  for (int i = n - 1; i >= 0; i--) {
    for (double element in buckets[i]) {
      list[index++] = element;
    }
  }
}

void insertionSort(List<double> list) {
  int n = list.length;

  for (int i = 1; i < n; i++) {
    double key = list[i];
    int j = i - 1;

    while (j >= 0 && list[j] > key) {
      list[j + 1] = list[j];
      j -= 1;
    }
    list[j + 1] = key;
  }
}

void main() {
  List<double> list = [0.897, 0.565, 0.656, 0.1234, 0.665, 0.3434];

  print("Mảng ban đầu :");
  print(list);

  bucketSort(list);

  print("Mảng sau khi sắp xếp : ");

  print(list);
}
