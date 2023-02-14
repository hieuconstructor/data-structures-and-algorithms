/*

A binary tree is a tree where each node has at most two children, often
referred to as the left and right children

-------------------------------Key Points---------------------------------------
• A binary tree is a tree where each node has at most two children, often referred 
to as the left and right children.
• Tree traversal algorithms visit each node in the tree once.
• In-order traversal recursively visits the left child first, then the current 
parent node, and finally the right child.
• Pre-order traversal visits the parent node first, followed by the child nodes.
• Post-order traversal visits the child nodes before the parent nodes.

*/
import 'libs/binary_node.dart';

BinaryNode<int> createBinaryTree() {
  final zero = BinaryNode(0);
  final one = BinaryNode(1);
  final five = BinaryNode(5);
  final seven = BinaryNode(7);
  final eight = BinaryNode(8);
  final nine = BinaryNode(9);
  seven.leftChild = one;
  one.leftChild = zero;
  one.rightChild = five;
  seven.rightChild = nine;
  nine.leftChild = eight;
  return seven;
}

void main() {
  final tree = createBinaryTree();
  print(tree);

  //In-Order Traversal
  print('\nIn-Order Traversal');
  tree.traverseInOrder(print);

  //Pre-Order Traversal
  print('\nPre-Order Traversal');
  tree.traversePreOrder(print);

  //Post-Order Traversal
  print("\nPost-Order Traversal");
  tree.traversePostOrder(print);
}
