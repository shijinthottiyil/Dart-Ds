import 'dart:collection';

void main() {
  Queue<int> queue = Queue<int>();
  queue.add(1);
  queue.add(2);
  queue.add(3);
  print(queue);
  queue.removeFirst();
  print(queue);
}
