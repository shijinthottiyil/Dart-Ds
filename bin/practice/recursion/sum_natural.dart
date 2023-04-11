int sum = 0;
int i = 1;
int sumOfNat(int i, int n) {
  if (i > n) {
    return 0;
  }
  sum = sum + i;
  sumOfNat(i + 1, n);
  return sum;
}

void main() {
  int res = sumOfNat(i, 3);
  print(res);
}
