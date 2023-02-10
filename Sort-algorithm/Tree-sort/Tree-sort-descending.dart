class GFG {
  Node? root;

  GFG() {
    root = null;
  }

  void insert(int key) {
    root = insertRec(root, key);
  }

  Node insertRec(Node? root, int key) {
    if (root == null) {
      root = Node(key);
      return root;
    }
    if (key > root.key) {
      root.right = insertRec(root.right, key);
    } else {
      root.left = insertRec(root.left, key);
    }
    return root;
  }

  void inorderRec(Node? root) {
    List<int> result = [];
    if (root != null) {
      inorderRec(root.left);
      result.add(root.key);
      print(root.key);
      inorderRec(root.right);
    }
  }

  void treeins(List<int> arr) {
    for (var i = 0; i < arr.length; i++) {
      insert(arr[i]);
    }
  }
}

class Node {
  int key;
  Node? left;
  Node? right;

  Node(this.key) {
    this.left = null;
    right = null;
  }
}

void main() {
  GFG tree = GFG();
  List<int> arr = [5, 4, 7, 2, 11];
  tree.treeins(arr);
  print("Mảng sau sắp xếp là : ");
  tree.inorderRec(tree.root);
}
