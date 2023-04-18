bool isPrime(int n, int i) {
  if (n <= 2) {
    return (n == 2) ? true : false;
  }
  if (n % i == 0) {
    return false;
  }
  if (i * i > n) {
    return true;
  }
  return isPrime(n, i + 1);
}

void main() {
  int num = 7;
  if (isPrime(num, 2)) {
    print('$num is prime');
  } else {
    print('$num is not prime');
  }
}
