void main(){
  // Penjelasan : Perulangan for akan mencetak nilai index dari 10 sampai 26.
  for (int index = 10; index < 27; index++) {
    print(index);
  }
  
  // Penjelasan : Perulangan for akan mencetak nilai index dari 0 sampai 24, namun jika nilai index adalah 21 maka perulangan akan berhenti. Dan jika nilai index lebih dari 1 dan kurang dari 7 maka nilai index tersebut tidak akan dicetak.
  for (int index = 0; index < 25; index++) {
    if (index == 21) {
      break;
    } else if (index > 1 && index < 7) {
      continue;
    }
    print(index);
  }
}