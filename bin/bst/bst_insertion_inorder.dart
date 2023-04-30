class Node {
  int key;
  Node? left;
  Node? right;
  Node(this.key);
}

class BinarySearchTree {
  Node? root;
  void insert(int key) {
    root = insertRec(root, key);
  }

  Node? insertRec(Node? root, int key) {
    if (root == null) {
      root = Node(key);
      return root;
    } else if (key < root.key) {
      root.left = insertRec(root.left, key);
    } else if (key > root.key) {
      root.right = insertRec(root.right, key);
    }
    return root;
  }

  void inorderTraversal(Node? node) {
    if (node != null) {
      inorderTraversal(node.left);
      print(node.key);
      inorderTraversal(node.right);
    }
  }
}

void main() {
  BinarySearchTree bst = BinarySearchTree();
  bst.insert(10);
  bst.insert(5);
  bst.insert(2);
  bst.insert(1);
  bst.inorderTraversal(bst.root);
}
