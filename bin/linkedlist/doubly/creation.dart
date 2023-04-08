class Node {
  int data;
  Node? next;
  Node? prev;
  Node(this.data);
}

class LinkedList {
  Node? head;
  Node? tail;

  void add(int data) {
    final node = Node(data);
    if (head == null) {
      head = node;
      tail = node;
    } else {
      node.prev = tail;
      tail!.next = node;
      tail = node;
    }
  }

  void printList() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  void printReverse() {
    Node? current = tail;
    while (current != null) {
      print(current.data);
      current = current.prev;
    }
  }
}

void main() {
  final list = LinkedList();
  list.add(1);
  list.add(2);
  list.add(3);
  list.printList();
  print('\n');
  list.printReverse();
}
