/*
  A binary search tree, or BST, is a data structure that facilitates fast lookup, insert
and removal operations. Consider the following decision tree where picking a side
forfeits all the possibilities of the other side, cutting the problem in half

  Once you make a decision and choose a branch, there is no looking back. You keep
going until you make a final decision at a leaf node. Binary trees let you do the same
thing. Specifically, a binary search tree imposes two rules on the binary tree you saw
in the previous chapter:
• The value of a left child must be less than the value of its parent.
• Consequently, the value of a right child must be greater than or equal to the value
of its parent.
*/
import 'libs/binary_search_tree.dart';

BinarySearchTree<int> buildExampleTree() {
  var tree = BinarySearchTree<int>();
  tree.insert(3);
  tree.insert(1);
  tree.insert(4);
  tree.insert(0);
  tree.insert(2);
  tree.insert(5);
  return tree;
}

void main() {
  final tree = buildExampleTree();
  print(tree);

  //Finding Elements
  if (tree.contains(5)) {
    print("Found 5!");
  } else {
    print("Couldn’t find 5");
  }

  //Removing Elements
  print('Tree before removal:');
  print(tree);
  tree.remove(3);
  print('Tree after removing root:');
  print(tree);
}
