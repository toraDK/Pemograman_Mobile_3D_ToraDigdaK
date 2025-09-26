void main(){
  //Langkah 1
  // Penjelasan : pengkodisian nilai padda variabel test berisi test2.Dan akan dilakukan kondisi di kode bagian bawahnya untuk mencocokan nilai variabel test.Karena nilai variabel test adalah test2,maka akan mencetak Test2.
  // Output : Test2
  String test = "test2";
  if (test == "test1") {
    print("Test1");
  }else if(test == "test2") {
    print("Test2");
  }else {
    print("Something else");
  }

  // Penjelasan : Program akan print Test2 again jika nilai variabel test adalah test2.
  if (test == "test2") print("Test2 again");
  

  //Langkah 3
  // Penjelasan : Program akan mencetak Kebenaran jika nilai variabel test2 bernilai true.
  // Output : Kebenaran
  bool test2 = true;
  if (test2) {
    print("Kebenaran");
  }
  
}