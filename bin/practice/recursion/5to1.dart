void printNum(int n) {
  if (n < 1) {
    return;
  } else {
    print(n);
    printNum(n - 1);
  }
}

void main() {
  int n = 5;
  printNum(n);
}
