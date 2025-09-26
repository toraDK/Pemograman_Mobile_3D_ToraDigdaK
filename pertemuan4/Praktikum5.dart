// Fungsi untuk menukar elemen dalam record
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main() {
  // Membuat record dengan elemen berbeda tipe
  var record = ('first', a: 2, b: true, 'last');
  print("Record awal: $record");

  // Panggil fungsi tukar
  var hasilTukar = tukar((10, 20));
  print("Hasil tukar record (10,20): $hasilTukar");

  // Record type annotation in a variable declaration
  (String, int) mahasiswa = ('Tora Digda Kristiawan', 2341720161);
  print("Record mahasiswa: $mahasiswa");

  var mahasiswa2 = ('first', a: 2, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}
