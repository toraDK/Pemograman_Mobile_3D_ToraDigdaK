void main() {
  // Map dengan key String, value String
  var gifts = <String, String>{
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  // Map dengan key int, value String
  var nobleGases = <int, String>{
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  // Cetak isi awal
  print("Awal gifts: $gifts");
  print("Awal nobleGases: $nobleGases");

  // Map kosong dengan generic type
  var mhs1 = Map<String, String>();
  mhs1['nama'] = 'Tora Digda Kristiawan';
  mhs1['nim'] = '2341720161';

  var mhs2 = Map<int, String>();
  mhs2[1] = 'Tora Digda Kristiawan';
  mhs2[2] = '2341720161';

  // Cetak setelah update
  print("Setelah update gifts: $gifts");
  print("Setelah update nobleGases: $nobleGases");
  print("Isi mhs1: $mhs1");
  print("Isi mhs2: $mhs2");
}
