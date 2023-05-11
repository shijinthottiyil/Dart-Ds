class Node {
  List<Node?> children = List<Node?>.filled(26, null);
  bool endOfWord = false;
}

class Trie {
  Node? root = Node();

  void insert(String word) {
    Node? current = root;
    for (int i = 0; i < word.length; i++) {
      int index = word.codeUnitAt(i) - 'a'.codeUnitAt(0);
      if (current!.children[index] == null) {
        current.children[index] = Node();
      }
      if (i == word.length - 1) {
        current.children[index]!.endOfWord = true;
      }
      current = current.children[index];
    }
  }

  bool search(String word) {
    Node? current = root;
    for (int i = 0; i < word.length; i++) {
      int index = word.codeUnitAt(i) - 'a'.codeUnitAt(0);
      if (current!.children[index] == null) {
        return false;
      }
      if (i == word.length - 1 && current.children[index]!.endOfWord == false) {
        return false;
      }
      current = current.children[index];
    }
    return true;
  }
}

void main() {
  Trie trie = Trie();
  trie.insert("my");
  trie.insert("name");
  trie.insert("is");
  trie.insert("shijin");
  print(trie.search("shijin"));
  print(trie.search("false"));
}
