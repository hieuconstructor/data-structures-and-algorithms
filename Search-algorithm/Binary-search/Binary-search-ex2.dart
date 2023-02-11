int? findKthLargestElement(List<int> sortedArray, int k) {
  final n = sortedArray.length;
  if (k > n) {
    print("Không tìm thấy");
    return null;
  }
  final index = n - k;
  int low = 0;
  int high = n - 1;
  while (low <= high) {
    final mid = ((low + high) / 2).floor();
    if (sortedArray[mid] < sortedArray[index]) {
      low = mid + 1;
    } else if (sortedArray[mid] > sortedArray[index]) {
      high = mid - 1;
    } else {
      return sortedArray[mid];
    }
  }
  print("Không tìm thấy");
  return null;
}

void main() {
  print("Viết chương trình sử dụng thuật toán tìm kiếm nhị \n" +
      "phân để tìm kiếm phần tử lớn thứ k trong một mảng đã sắp xếp tăng dần.\n" +
      "Nếu mảng có ít hơn k phần tử, in ra thông báo không tìm thấy.\n ");
  final sortedArray = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21];
  final k = 6;
  print(sortedArray);
  final result = findKthLargestElement(sortedArray, k);
  print(result);
}
