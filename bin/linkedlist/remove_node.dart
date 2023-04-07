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
    Node? current = head;
    if (head == null) {
      return;
    } else if (head!.data == data) {
      head = head!.next;
    }
    while (current!.next != null) {
      if (current.next!.data == data) {
        current.next = current.next!.next;
        return;
      }
      current = current.next;
    }
  }
}

void main() {
  LinkedList list = LinkedList();
  list.add(1);
  list.add(2);
  list.add(3);
  list.printList();
  list.remove(1);
  list.printList();
}
