1. Jelaskan yang dimaksud Functions dalam bahasa Dart!
    Jawab : blok kode yang bisa dipanggil kembali untuk menjalankan tugas tertentu.

2. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!
    Jawab :
    a. Positional Parameters (wajib urut)
    void sapa(String nama, int umur) {
        print("Halo $nama, umur $umur tahun");
    }

    void main() {
        sapa("Tora", 21);
    }

    b. Optional Positional Parameters ([])
