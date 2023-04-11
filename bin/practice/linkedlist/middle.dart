// Finding the middle element of a LinkedList:

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

  void printMiddle() {
    Node? fast =
        head; // this pointer will move fast that means it will jumb from 1st element to 3 element etc
    Node? slow = head; // this pointe will move normally that means 1 to 2
    while (fast != null && fast.next != null) {
      slow = slow!.next;
      fast = fast.next!.next;
    }
    print('middle element is ${slow!.data}');
  }
}

void main() {
  final list = LinkedList();
  list.add(1);
  list.add(2);
  list.add(3);
  list.add(4);
  list.add(5);
  list.add(6);
  list.printList();
  list.printMiddle();
}
