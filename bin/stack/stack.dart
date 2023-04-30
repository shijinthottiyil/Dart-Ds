class Node {
  int data;
  Node? next;
  Node(this.data);
}

class Stack {
  Node? head;

  void push(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      print(head!.data);
    } else {
      newNode.next = head;
      head = newNode;
      print(head!.data);
    }
  }

  void pop() {
    if (head == null) {
      print("head is empty");
    } else {
      head = head!.next;
      print(head!.data);
    }
  }

  void peek() {
    if (head == null) {
      print("head is empty");
    } else {
      print(head!.data);
    }
  }
}

void main() {
  Stack stack = Stack();
  stack.push(1);
  stack.push(3);
  stack.push(5);
  print("\n");
  stack.pop();
  print("\n");
  stack.peek();
}
