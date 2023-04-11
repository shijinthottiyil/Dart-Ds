int fact = 1;
int factorial(int i, int n) {
  if (i > n) {
    return 1;
  }
  fact = fact * i;
  factorial(i + 1, n);
  return fact;
}

void main() {
  int res = factorial(1, 5);
  print(res);
}
