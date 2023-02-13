/* 
  push: Thêm một phần tử vào đỉnh của ngăn xếp.
  pop: Lấy phần tử ở đỉnh của ngăn xếp và xóa nó khỏi ngăn xếp.
  top (hoặc peek): Trả về phần tử ở đỉnh của ngăn xếp mà không xóa nó khỏi ngăn xếp.
  isEmpty: Kiểm tra xem ngăn xếp có rỗng hay không.
  length: Trả về số lượng phần tử trong ngăn xếp. 
*/

import 'Stack.dart';

void main() {
  final stack = Stack<int>();

  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  print(stack);
  final element = stack.pop();
  print('Popped: $element');

  const list = ['S', 'M', 'O', 'K', 'E'];
  final smokeStack = Stack.of(list);
  print(smokeStack);
  smokeStack.pop();
}


/*
Key Points
• A stack is a LIFO, last-in first-out, data structure.
• Despite being so simple, the stack is a key data structure for many problems.
• The only two essential operations for a stack are push for adding elements and
pop for removing elements.
• push and pop are both constant-time operations.
*/