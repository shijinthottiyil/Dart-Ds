void printNum(int n) {
  if (n == 0) {
    return;
  }
  print(n);
  printNum(n - 1);
}

void main() {
  printNum(5);
}
