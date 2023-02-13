/*Set Đặt trong Dart là một trường hợp đặc biệt
 trong Danh sách trong đó tất cả các đầu vào là duy nhất, 
 tức là nó không chứa bất kỳ đầu vào lặp lại nào. 
 Nó cũng có thể được hiểu là một mảng không có thứ tự 
 với các đầu vào duy nhất. Bộ này phát huy tác dụng khi 
 chúng ta muốn lưu trữ các giá trị duy nhất trong một biến 
 duy nhất mà không cần xem xét thứ tự của các yếu tố đầu vào. 
 Các tập hợp được khai báo bằng cách sử dụng từ khóa set. */

void main() {
  // Declaring set
  var bag = {'Candy', 'Juice', 'Gummy'};
  bag.add('Candy');
  print(bag); // {Candy, Juice, Gummy}

  /* Since sets enforce uniqueness, they lend themselves 
  to a variety of interesting applications, such as 
  finding duplicate elements in a collection of values:
  */

  final myList = [1, 2, 2, 3, 4];
  final mySet = <int>{};
  for (final item in myList) {
    if (mySet.contains(item)) {
      // mySet already has it, so it's a duplicate
    }
    mySet.add(item);
  }

  print(mySet);

  //Add all
  final set2 = <int>{5, 6, 9, 8};
  mySet.addAll(set2);
  print(mySet);
}
