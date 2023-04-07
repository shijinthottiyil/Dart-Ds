class Node {
  int data;
  Node? next;
  Node(this.data);
}

class LinkedList {
  Node? head;
  void add(int data) {
    final node = Node(data);
    if (head == null) {
      head = node;
    } else {
      Node? current = head;
      while (current!.next != null) {
        current = current.next;
      }
      current.next = node;
    }
  }

  void printList() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  void insertAfter(int data, int after) {
    final node = Node(data);
    Node? current = head;
    while (current != null) {
      if (current.data == after) {
        node.next = current.next;
        current.next = node;
        return;
      }
      current = current.next;
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
  list.insertAfter(4, 3);
  list.printList();
}
