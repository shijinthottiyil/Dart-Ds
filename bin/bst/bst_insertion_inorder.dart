class Node {
  int key;
  Node? left;
  Node? right;
  Node(this.key);
}

class BST {
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

  void inorderTraversal(Node? root) {
    if (root != null) {
      inorderTraversal(root.left);
      print(root.key);
      inorderTraversal(root.right);
    }
  }

  void delete(int key) {
    root = deleteRec(root, key);
  }

  Node? deleteRec(Node? root, int key) {
    if (root == null) {
      return root;
    } else if (key < root.key) {
      root.left = deleteRec(root.left, key);
    } else if (key > root.key) {
      root.right = deleteRec(root.right, key);
    } else if (key == root.key) {
      if (root.left == null) {
        return root.right;
      } else if (root.right == null) {
        return root.left;
      } else {
        root.key = inorderSuccessor(root.right);
        root.right = deleteRec(root.right, root.key);
      }
    }
    return root;
  }

  int inorderSuccessor(Node? root) {
    int min = root!.key;
    while (root!.left != null) {
      min = root.left!.key;
      root = root.left;
    }
    return min;
  }
}

void main() {
  BST bst = BST();
  bst.insert(11);
  bst.insert(6);
  bst.insert(8);
  bst.insert(19);
  bst.insert(4);
  bst.insert(10);
  bst.insert(5);
  bst.insert(17);
  bst.insert(43);
  bst.insert(49);
  bst.insert(31);
  bst.inorderTraversal(bst.root);
  bst.delete(11);
  bst.delete(8);
  print("\n");
  bst.inorderTraversal(bst.root);
}
