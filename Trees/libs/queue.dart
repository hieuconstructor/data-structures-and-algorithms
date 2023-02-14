abstract class Queue<E> {
  bool enqueue(E element);
  E? dequeue();
  bool get isEmpty;
  E? get peek;

  //---------------Notice---------------
  /*
    These are the meanings of the core operations:
    • enqueue: Insert an element at the back of the queue. Return true if the operation
    was successful.
    • dequeue: Remove the element at the front of the queue and return it.
    • isEmpty: Check if the queue is empty.
    • peek: Return the element at the front of the queue without removing it
    Notice that the queue only cares about removal from the front and insertion at the
    back. You don’t need to know what the contents are in between. If you did, you
    would probably just use a list.
  */
}

class QueueList<E> implements Queue<E> {
  final _list = <E>[];

  //------------------------Enqueue----------------------

  @override
  bool enqueue(E element) {
    _list.add(element);
    return true;
  }

  //------------------------Dequeue----------------------
  /*
    If the queue is empty, dequeue simply returns null. 
    If not, it removes the element from the front
    of the list and returns it.
    Removing an element from the beginning of a list is always a linear-time operation
    because it requires all the remaining elements in the list to be shifted in memory
  */
  @override
  E? dequeue() => (isEmpty) ? null : _list.removeAt(0);

  //------------------------Leveraging Lists----------------------
  /*
    Using the features of List, you get the following for free:
    1. Check if the queue is empty.
    2. Return the element at the front of the queue, or null if the queue is empty.
    These operations are both O(1).
  */
  @override
  bool get isEmpty => _list.isEmpty;
  @override
  E? get peek => (isEmpty) ? null : _list.first;

  //toString
  @override
  String toString() => _list.toString();
}
