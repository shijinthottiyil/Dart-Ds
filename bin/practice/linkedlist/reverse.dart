// Reversing a LinkedList:
class Node {
  int data;
  Node? prev;
  Node(this.data);
}

class LinkedList {
  Node? head;
  void addReverse(int data) {
    Node? prevPtr;
    final node = Node(data);
    if (head == null) {
      head = node;
    } else {
      prevPtr = head;
      head = node;
      head!.prev = prevPtr;
    }
  }

  void printReverse() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.prev;
    }
  }
}

void main() {
  final list = LinkedList();
  list.addReverse(1);
  list.addReverse(2);
  list.addReverse(3);
  list.printReverse();
}
