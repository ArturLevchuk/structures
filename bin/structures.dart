class Bag<T> {
  final List<T> _items = [];

  void add(T item) {
    _items.add(item);
  }

  Iterable<T> get items => _items;
}

class Queue<T> {
  final List<T> _items = [];

  void enqueue(T item) {
    _items.add(item);
  }

  T dequeue() {
    if (_items.isEmpty) {
      throw StateError('Queue is empty');
    }
    return _items.removeAt(0);
  }

  bool get isEmpty => _items.isEmpty;

  int get length => _items.length;
}

class Stack<T> {
  final List<T> _items = [];

  void push(T item) {
    _items.add(item);
  }

  T pop() {
    if (_items.isEmpty) {
      throw StateError('Stack is empty');
    }
    return _items.removeLast();
  }

  bool get isEmpty => _items.isEmpty;

  int get length => _items.length;
}

void main() {
  // Example usage of Bag
  var bag = Bag<int>();
  bag.add(1);
  bag.add(2);
  bag.add(2);
  bag.add(3);
  print('Bag items: ${bag.items}');

  // Example usage of Queue
  var queue = Queue<int>();
  queue.enqueue(1);
  queue.enqueue(2);
  queue.enqueue(3);
  print('Dequeued item: ${queue.dequeue()}');
  print('Queue length: ${queue.length}');

  // Example usage of Stack
  var stack = Stack<int>();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  print('Popped item: ${stack.pop()}');
  print('Stack length: ${stack.length}');
}
