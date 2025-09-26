void main() {
    // // Penjelasan : menampilkan panjang list dan nilai index ke 1 dari list tersebut.
    // var list = [1, 2, 3];
    // assert(list.length == 3);
    // assert(list[1] == 2);
    // print(list.length);
    // print(list[1]);

    // // Penjelasan : mengubah nilai index ke 1 dari list tersebut menjadi 1 dan menampilkannya.
    // list[1] = 1;
    // assert(list[1] == 1);
    // print(list[1]);

    // langkah 3
    //membuat list final dengan panjang 5, default null
    final List<String?> list = List.filled(5, null);

    list[1] = "Tora Digda Kristiawan";
    list[2] = "2341720161";

    print(list);
}