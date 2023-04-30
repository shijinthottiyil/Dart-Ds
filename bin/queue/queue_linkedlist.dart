class Node {
  int data;
  Node? next;
  Node(this.data);
}

class Queue {
  Node? front;
  Node? rear;

  void enqueue(int data) {
    Node newNode = Node(data);
    if (front == null) {
      front = newNode;
      rear = newNode;
    } else {
      rear!.next = newNode;
      rear = newNode;
    }
  }

  void dequeue() {
    if (front != null) {
      front = front!.next;
    }
  }

  void display() {
    Node? current = front;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  Queue queue = Queue();
  queue.enqueue(1);
  queue.enqueue(2);
  queue.enqueue(3);
  queue.display();
  print("\n");
  queue.dequeue();
  queue.display();
}
