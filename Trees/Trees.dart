import 'libs/tree.dart';

void main() {
  final beverages = TreeNode('Beverages');
  final hot = TreeNode('Hot');
  final cold = TreeNode('Cold');
  beverages.add(hot);
  beverages.add(cold);

  print("\n");
  final tree = makeBeverageTree();
  tree.forEachDepthFirst((node) => print(node.value));

  print("\n");
  tree.forEachLevelOrder((node) => print(node.value));

  print("\n");
  final searchResult1 = tree.search('ginger ale');
  print(searchResult1?.value); // ginger ale
  final searchResult2 = tree.search('water');
  print(searchResult2?.value); // null
}

TreeNode<String> makeBeverageTree() {
  final tree = TreeNode('beverages');
  final hot = TreeNode('hot');
  final cold = TreeNode('cold');
  final tea = TreeNode('tea');
  final coffee = TreeNode('coffee');
  final chocolate = TreeNode('cocoa');
  final blackTea = TreeNode('black');
  final greenTea = TreeNode('green');
  final chaiTea = TreeNode('chai');
  final soda = TreeNode('soda');
  final milk = TreeNode('milk');
  final gingerAle = TreeNode('ginger ale');
  final bitterLemon = TreeNode('bitter lemon');
  tree.add(hot);
  tree.add(cold);
  hot.add(tea);
  hot.add(coffee);
  hot.add(chocolate);
  cold.add(soda);
  cold.add(milk);
  tea.add(blackTea);
  tea.add(greenTea);
  tea.add(chaiTea);
  soda.add(gingerAle);
  soda.add(bitterLemon);
  return tree;
}
