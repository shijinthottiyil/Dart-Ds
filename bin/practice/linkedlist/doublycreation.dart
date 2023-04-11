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
}

void main() {
  final list = LinkedList();
  List<int> numbers = [1, 2, 3];
  for (int number in numbers) {
    list.add(number);
  }
  list.printList();
}
