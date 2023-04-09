void printNum(int n) {
  if (n == 6) {
    return;
  }
  print(n);
  printNum(n + 1);
}

void main() {
  printNum(1);
}
