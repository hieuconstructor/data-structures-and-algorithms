<<<<<<< HEAD
import '../lib/queue.dart';
=======
import 'Queue.dart';
>>>>>>> parent of 94aab05 (Revert "Data structures in dart")

void main() {
  final queue = QueueList<String>();
  queue.enqueue('Ray');
  queue.enqueue('Brian');
  queue.enqueue('Eric');
  queue.enqueue('Ray');
  queue.enqueue('Brian');
  queue.enqueue('Eric');
  print(queue);

  queue.dequeue();
  print(queue);

  queue.peek;
  print(queue);
}
