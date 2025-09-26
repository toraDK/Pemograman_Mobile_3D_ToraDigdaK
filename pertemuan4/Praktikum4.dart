void main(){
  // var list1 = [1, 2, 3];
  // var list2 = [0, ...list1];
  // print(list1);
  // print(list2);
  // print(list2.length);

  // var list1 = [1, 2, null];
  // print("Isi list1: $list1");

  // var list3 = [0, ...list1];
  // print("Isi list3: $list3");
  // print("Panjang list3: ${list3.length}");

  // //membuat list NIM
  // var nimList = ['2341720161'];

  // // Gabungkan dengan spread operator
  // var listFinal = [...list3, ...nimList];
  // print("Isi listFinal (gabungan list3 + NIM): $listFinal");
  // print("Panjang listFinal: ${listFinal.length}");

  // // Kasus 1: promoActive = true
  // var promoActive = true;
  // var nav1 = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print("promoActive = true → $nav1");

  // // Kasus 2: promoActive = false
  // promoActive = false;
  // var nav2 = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print("promoActive = false → $nav2");

  // // Kasus 1: login = 'Manager'
  // var login = 'Manager';
  // var nav1 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  // print("login = Manager → $nav1");

  // // Kasus 2: login = 'User'
  // login = 'User';
  // var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  // print("login = User → $nav2");

  // // Kasus 3: login = 'Admin'
  // login = 'Admin';
  // var nav3 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  // print("login = Admin → $nav3");

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}