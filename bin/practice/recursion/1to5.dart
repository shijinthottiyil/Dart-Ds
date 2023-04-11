void printNum(int n) {
  if (n == 6) {
    return;
  } else {
    print(n);
    printNum(n + 1);
  }
}

void main() {
  int n = 1;
  printNum(n);
}
