int sum = 0;
int sumOfNatural(int n) {
  if (n > 0) {
    sum = sum + n;
    sumOfNatural(n - 1);
  }
  return sum;
}

void main() {
  int total = sumOfNatural(100);
  print(total);
}
