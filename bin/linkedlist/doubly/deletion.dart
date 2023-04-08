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

  void remove(int data) {
    if (head!.data == data) {
      head = head!.next;
      head!.prev = null;
      return;
    } else if (tail!.data == data) {
      tail = tail!.prev;
      tail!.next = null;
      return;
    } else {
      Node? current = head;
      while (current != null) {
        if (current.data == data) {
          current.prev!.next = current.next;
          current.next!.prev = current.prev;

          return;
        }
        current = current.next;
      }
    }
  }
}

void main() {
  final list = LinkedList();
  list.add(1);
  list.add(2);
  list.add(3);
  list.add(4);
  list.printList();
  print('\n');
  list.remove(4);
  list.printList();
}
