void main(){
  int counter = 25;
  
  //Penjelasan : Perulangan while akan mencetak nilai counter selama nilai counter kurang dari 33.
  while (counter < 33) {
    print(counter);
    counter++;
  }
  
  // Penjelasan : Perulangan do while akan mencetak nilai counter selama nilai counter kurang dari 77.
  do {
    print(counter);
    counter++;
  } while (counter < 77);
}