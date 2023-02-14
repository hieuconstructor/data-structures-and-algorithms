/*
Since a tree is made up of nodes, your first task is to make a TreeNode class.

-------------------------------NOTE-------------------------------------------
Trees share some similarities to linked lists, but, whereas linked-list nodes may
only link to one successor node, a tree node can link to many child nodes.
• Every tree node, except for the root node, has exactly one parent node.
• A root node has no parent nodes.
• Leaf nodes have no child nodes.
• Traversals, such as depth-first and level-order traversals, work on multiple types
of trees. However, the implementation will be slightly different based on how the
tree is structured.
*/

import 'queue.dart';

class TreeNode<T> {
  TreeNode(this.value);
  T value;
  List<TreeNode<T>> children = [];

  void add(TreeNode<T> child) {
    children.add(child);
  }

  //Depth-First Traversal
  void forEachDepthFirst(void Function(TreeNode<T> node) performAction) {
    performAction(this);
    for (final child in children) {
      child.forEachDepthFirst(performAction);
    }
  }

  void forEachLevelOrder(void Function(TreeNode<T> node) performAction) {
    final queue = QueueList<TreeNode<T>>();
    performAction(this);
    children.forEach(queue.enqueue);
    var node = queue.dequeue();
    while (node != null) {
      performAction(node);
      node.children.forEach(queue.enqueue);
      node = queue.dequeue();
    }
  }

  TreeNode? search(T value) {
    TreeNode? result;
    forEachLevelOrder((node) {
      if (node.value == value) {
        result = node;
      }
    });
    return result;
  }
}
