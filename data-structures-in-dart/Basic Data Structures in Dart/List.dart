void main() {
  // Declaring a list

  var list = <int>[1, 2, 3];
  var list2 = [0, ...list];

  //Creates a list of size zero
  var list_name = [];

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];

  final people = ['Pablo', 'Manda', 'Megan'];

  print("Mảng list: $list");
  print("Mảng list2: $list2");
  print("Mảng list listOfString: $listOfStrings");

  print("Độ dài mảng list: ${list.length}");
  print("Độ dài mảng list2: ${list2.length}");

  //Gán giá trị cho 1 phần tử trong mảng
  list[2] = 15;

  //Thêm phần tử vào mảng
  list.add(25);

  print("Mảng sau khi thêm: $list");

  print("Phần tử đầu tiên của mảng là ${list.first}");

  print("Phần tử cuối cùng của mảng là: ${list.last}");

  print("In mảng theo danh sách ngược lại: ${list.reversed}");
}
