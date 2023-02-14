import 'libs/avl_tree.dart';
import 'dart:math' as math;

void main() {
  final tree = AvlTree<int>();
  for (var i = 0; i < 15; i++) {
    tree.insert(i);
  }
  // print(tree);

  final tree2 = AvlTree<int>();
  tree2.insert(15);
  tree2.insert(10);
  tree2.insert(16);
  tree2.insert(18);
  print(tree2);
  // tree2.remove(9);
  // print(tree2);

  //Remove node is error
}
