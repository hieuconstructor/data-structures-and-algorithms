class AvlNode<T> {
  AvlNode(this.value);
  T value;
  AvlNode<T>? leftChild;
  AvlNode<T>? rightChild;

  int height = 0;

  int get balanceFactor => leftHeight - rightHeight;
  int get leftHeight => leftChild?.height ?? -1;
  int get rightHeight => rightChild?.height ?? -1;

  @override
  String toString() {
    return _diagram(this);
  }

  String _diagram(
    AvlNode<T>? node, [
    String top = '',
    String root = '',
    String bottom = '',
  ]) {
    if (node == null) {
      return '$root null\n';
    }
    if (node.leftChild == null && node.rightChild == null) {
      return '$root ${node.value}\n';
    }
    final a = _diagram(
      node.rightChild,
      '$top ',
      '$top┌──',
      '$top│ ',
    );
    final b = '$root${node.value}\n';
    final c = _diagram(
      node.leftChild,
      '$bottom│ ',
      '$bottom└──',
      '$bottom ',
    );
    return '$a$b$c';
  }
}
