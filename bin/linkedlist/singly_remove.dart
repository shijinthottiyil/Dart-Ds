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

  void remove(int data) {
    if (head!.data == data) {
      head = head!.next;
      return;
    } else {
      Node? current = head;
      Node? prev;
      while (current != null) {
        if (current.data == data) {
          prev!.next = current.next;
          return;
        }
        prev = current;
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
  list.remove(4);
  print("\n");
  list.printList();
}
