void main(){
  // // Penjelasan : Membuat sebuah set bernama halogens yang berisi elemen-elemen dari golongan halogen pada tabel periodik, kemudian mencetak isi set tersebut.
  // var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  // print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {};

  names1.add("Tora Digda Kristiawan");
  names1.add("2241760014");

  names2.addAll({"Tora Digda Kristiawan", "2241760014"});

  print("Isi names1: $names1");
  print("Isi names2: $names2");
}