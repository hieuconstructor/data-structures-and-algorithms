/*
  A linked list is a collection of values arranged in a linear, unidirectional sequence. It
  has several theoretical advantages over contiguous storage options such as the Dart
  List:
  • Constant time insertion and removal from the front of the list.
  • Reliable performance characteristics.
  A linked list is a chain of nodes
  Nodes have two responsibilities:
  1. Hold a value.
  2. Hold a reference to the next node. A null reference indicates the end of the list.
*/

import 'Linked-lists.dart';

void main() {
  //Create Node
  final node1 = Node(value: 1);
  final node2 = Node(value: 2);
  final node3 = Node(value: 3);
  node1.next = node2;
  node2.next = node3;
  print('Node: $node1');

  // LinkedList

  /*
    A linked list has the concept of a head and tail, 
    which refers to the first and last
    nodes of the list respectively
  */
  final list = LinkedList<int>();

  //Pushing to the Front of a List
  list.push(3);
  list.push(2);
  list.push(1);

  final list2 = LinkedList<int>();

  print("\nList: $list");

  // Appending to the End of a List

  list2.append(1);
  list2.append(2);
  list2.append(3);
  print("\nList2 : $list");

  //Inserting in Middle of a List

  final list4 = LinkedList<int>();
  list4.push(3);
  list4.push(2);
  list4.push(1);
  print('\nBefore list4: $list4');
  var middleNode = list4.nodeAt(1)!;
  list4.insertAfter(middleNode, 42);
  print('After list4: $list4');

  //Removing Values From a List

  /* 
    There are three main operations for removing nodes:
    1. pop: Removes the value at the front of the list.
    2. removeLast: Removes the value at the end of the list.
    3. removeAfter: Removes the value after a particular node in the list.
    You’ll implement all three and analyze their performance characteristics.
  */

  final list5 = LinkedList<int>();
  list5.push(3);
  list5.push(2);
  list5.push(1);
  print('\nBefore list5: $list5');
  final poppedValue = list.pop();
  print('After list5: $list5');
  print('Popped value: $poppedValue');

  //Removing From the End of a List

  final list6 = LinkedList<int>();
  list6.push(3);
  list6.push(2);
  list6.push(1);
  print('\nBefore list6: $list6');
  final removedValue = list.removeLast();
  print('After list6: $list6');
  print('Removed value: $removedValue');

  //Removing a Value From the Middle of a List

  final list7 = LinkedList<int>();
  list7.push(3);
  list7.push(2);
  list7.push(1);
  print('\nBefore list7: $list7');
  final firstNode = list7.nodeAt(0);
  final removedValueMiddle = list.removeAfter(firstNode!);
  print('After list7: $list');
  print('Removed value: $removedValueMiddle');
}
