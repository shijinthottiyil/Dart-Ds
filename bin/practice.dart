class Node {
  int key;
  Node? left, right;

  Node(this.key);

  // Node(this.key) {
  //   // left = null;
  //   // right = null;
  // }
}

class BinarySearchTree {
  Node? root;

  // BinarySearchTree() {
  //   root = null;
  // }

  void insert(int key) {
    root = _insertRec(root, key);
  }

  Node? _insertRec(Node? root, int key) {
    if (root == null) {
      root = Node(key);
      return root;
    }

    if (key < root.key) {
      root.left = _insertRec(root.left, key);
    } else if (key > root.key) {
      root.right = _insertRec(root.right, key);
    }

    return root;
  }

  void delete(int key) {
    root = _deleteRec(root, key);
  }

  Node? _deleteRec(Node? root, int key) {
    if (root == null) {
      return root;
    }

    if (key < root.key) {
      root.left = _deleteRec(root.left, key);
    } else if (key > root.key) {
      root.right = _deleteRec(root.right, key);
    } else {
      if (root.left == null) {
        return root.right;
      } else if (root.right == null) {
        return root.left;
      }

      root.key = _minValue(root.right!);

      root.right = _deleteRec(root.right, root.key);
    }

    return root;
  }

  int _minValue(Node root) {
    int minValue = root.key;
    while (root.left != null) {
      minValue = root.left!.key;
      root = root.left!;
    }

    return minValue;
  }

  void inorder() {
    _inorderRec(root);
  }

  void _inorderRec(Node? root) {
    if (root != null) {
      _inorderRec(root.left);
      print(root.key);
      _inorderRec(root.right);
    }
  }
}

void main() {
  var tree = BinarySearchTree();

  tree.insert(50);
  tree.insert(30);
  tree.insert(20);
  tree.insert(40);
  tree.insert(70);
  tree.insert(60);
  tree.insert(80);

  print("Inorder traversal of the given tree:");
  tree.inorder();

  print("\nDelete 20");
  tree.delete(20);
  print("Inorder traversal of the modified tree:");
  tree.inorder();

  print("\nDelete 30");
  tree.delete(30);
  print("Inorder traversal of the modified tree:");
  tree.inorder();

  print("\nDelete 50");
  tree.delete(50);
  print("Inorder traversal of the modified tree:");
  tree.inorder();
}
