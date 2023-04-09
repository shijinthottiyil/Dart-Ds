void printFib(int a, int b, int n) {
  if (n == 0) {
    return;
  }
  int c = a + b;
  print(c);
  printFib(b, c, n - 1);
}

void main() {
  int a = 0, b = 1;
  print(a);
  print(b);
  int n = 7;
  printFib(a, b, n - 2);
}
