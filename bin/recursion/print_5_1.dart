void main() {
  void printNum(int n) {
    if (n == 0) {
      return;
    }
    print(n);
    printNum(n - 1);
  }

  printNum(5);
}
