import 'libs/heap.dart';

void main() {
  final heap = Heap<int>();
  heap.insert(10);
  heap.insert(8);
  heap.insert(5);
  heap.insert(4);
  heap.insert(6);
  heap.insert(2);
  heap.insert(1);
  heap.insert(3);
  print(heap);

  // heap.insert(7);
  // print(heap);

  print('\nTesting remove');
  final root = heap.remove();
  print(root);
  print(heap);

  print('\nTesting removeAt');
  final index = 1;
  heap.removeAt(index);
  print(heap);

  print('\nTesting it Out');
  final index2 = heap.indexOf(2);
  print(index2);

  print('\nTesting it Out 2:');
  var heap1 = Heap(elements: [1, 12, 3, 4, 1, 6, 8, 7]);
  print(heap1);
  while (!heap1.isEmpty) {
    print(heap1.remove());
  }

  print('\nTesting it Out 3:');
  var heap3 = Heap(
    elements: [1, 12, 3, 4, 1, 6, 8, 7],
    priority: Priority.min,
  );
  print(heap3);
  while (!heap3.isEmpty) {
    print(heap3.remove());
  }
}
