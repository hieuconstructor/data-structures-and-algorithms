void linearSearch(List list) {
  int i;
  if (list.length == 1) {
    print("Số lơn nhất là: $list[0]");
  } else {
    double m = list[0];
    int count = 0;

    List posi = [];
    for (i = 1; i < list.length; i++) {
      if (m <= list[i]) {
        m = list[i];
        posi.add(i);
        count++;
      }
    }
    print("Số lớn nhất của dãy là: $m");
    print("Vi trí xuất hiện của $m trong mảng là $posi");
    print("Số $m xuất hiện $count lần");
  }
}

int main() {
  // Viết chương trình tìm giá trị lớn nhất
  //trong một mảng sử dụng thuật toán tìm kiếm tuyến tính.

  List<double> arr = [6, 5, 12, 10, 9, 1, -1, 12];

  linearSearch(arr);
  return 0;
}

//Đã đúng
