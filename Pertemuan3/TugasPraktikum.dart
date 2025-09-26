void main() {
  for (int n = 2; n <= 201; n++) {
    bool prima = true;

    for (int i = 2; i * i <= n; i++) {
      if (n % i == 0) {
        prima = false;
        break;
      }
    }

    if (prima) {
      print("Bilangan prima: $n, nama saya Tora Digda Kristiawan NIM saya 2341720161");
    }
  }
    
}
