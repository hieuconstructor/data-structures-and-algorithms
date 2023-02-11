void main() {
  List<int> arr = [38, 27, 43, 3, 9, 82, 10];
  print('Before sorting: $arr');

  arr.sort((a, b) => a.compareTo(b));
  print('After sorting ascending: $arr');

  arr.sort((a, b) => b.compareTo(a));
  print('After sorting descending: $arr');
}
