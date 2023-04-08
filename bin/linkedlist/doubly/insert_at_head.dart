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
      tail!.next = node;
      node.prev = tail;
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

  void insertAtHead(int data) {
    final node = Node(data);
    head!.prev = node;
    node.next = head;
    head = node;
  }
}

void main() {
  final list = LinkedList();
  list.add(1);
  list.add(2);
  list.printList();
  print('\n');
  list.insertAtHead(3);
  list.printList();
}
