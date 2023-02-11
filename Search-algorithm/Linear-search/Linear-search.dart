void linearSearch(List<int> list, x) {
  int i;
  int count = 0;
  List posi = [];
  for (i = 0; i < list.length; i++) {
    if (list[i] == x) {
      posi.add(i);
      count++;
    }
  }
  print("Vi trí xuất hiện của $x trong mảng là $posi");
  print("Số $x xuất hiện $count lần");
}

int main() {
  print("--------------Array 1---------------");
  var arr = [6, 5, 12, 10, 9, 1];

  int x = 4;

  linearSearch(arr, x);
  print("--------------Array 2---------------");
  var arr1 = [6, 5, 12, 10, 9, 1, 6, 5, 12, 10, 9, 1, 9, 8, 8];

  int y = 10;

  linearSearch(arr1, y);
  return 0;
}

//Đã đúng
