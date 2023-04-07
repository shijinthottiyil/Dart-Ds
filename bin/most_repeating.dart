void main() {
  dynamic list = [1, 2, 3, 2, 4, 5, 3, 6, 7, 8, 9, 10, 3, 3];
  int freq, count = 0, mr = list[0];
  for (int i = 0; i < list.length; i++) {
    if (list[i] != 'a') {
      freq = 0;
      for (int j = i + 1; j < list.length; j++) {
        if (list[i] == list[j]) {
          freq++;
          list[j] = 'a';
        }
      }
      if (freq > count) {
        count = freq;
        mr = list[i];
      }
    }
  }
  print(mr.toString());
}
