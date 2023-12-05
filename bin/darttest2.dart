import 'dart:io';

import 'package:darttest2/Car.dart';
import 'package:darttest2/Functions.dart';
import 'package:darttest2/Staff.dart';
import 'package:darttest2/devam.dart';
import 'package:darttest2/hesap.dart';
import 'package:darttest2/kaskat.dart';
import 'package:darttest2/memeli.dart';
import 'package:darttest2/myConsts.dart';
import 'package:darttest2/myfuture.dart';
import 'package:darttest2/mylib.dart' as darttest2;
import 'package:darttest2/ship.dart';
import 'package:darttest2/whichDay.dart';
//import '../lib/darttest2.dart' as darttest2;

void main(List<String> arguments) {
  var kas1 = Kaskat()
    ..mayadd(2)
    ..maymul(3)
    ..maysub(1)
    ..myadd3()
    ..mayres().toString();

  print(kas1);

  exit(0);

  myFunn11(int function) {
    print(function);
  }

  int myAdd2(int a, int b) => (a + b);

  myFunn11(myAdd2(5, 4));

  devam();

  int myAdd(int a, int b) => (a + b);
  print(myAdd(4, 5));

  print(myAdd(6, myAdd(4, 8)));

  classType(Object className) {
    print(className is BankaHesabi);
  }

  classType(BankaHesabi('sdsdsds', 23.345454));
  print('ara ver');
  classType(BankaHesabi.ozel());
  classType(23);
  print('ara ver..............');
  classType(BankaHesabi);
  classType(myAdd(3, 4));

  print('Hello world: ${darttest2.calculate()}!');
  print('Today is ${whichDayIsToday()} ...');

  Car myCar1 = Car(brand: 'superbrand');
  myCar1.prCarInfo();
  Car myCar2 = Car.engine('diesel');
  myCar2.prCarInfo();
  Car myCar3 = Car.init();
  myCar3.prCarInfo();
  denemeler();
  denemeler2();

  Staff myStaff1 = Staff('Volkan Gazioglu', 52);
  myStaff1.prStaff();
  myStaff1.name = 'Kaan Gazioglu';
  print(myStaff1.name);
  myStaff1.prStaff();

  Soldier mySoldier1 = Soldier('Yuzbasi Volkan', 53, 'SWesson');
  mySoldier1.prSoldier();

  Worker myWorker1 = Worker('Hakan Gazi', 11, 'mutfak');
  myWorker1.prStaff();

  Aylak myAylak1 = Aylak('hebe lüp', 31);
  myAylak1.prAylak();
  myAylak1.prStaff();
  myAylak1.prYZ();

  Memeli myMemeli1 = Memeli('balina', 'uysal');
  myMemeli1.prMemeli();

  VadeliBankaHesabi hesap1 = VadeliBankaHesabi('1234', 123.456, 9);
  hesap1.tip();
  BankaHesabi.paylasilan = 5;
  hesap1.bakiye = 345.678;
  print(hesap1.bakiye);

  var hesap2 = BankaHesabi.ozel();
  hesap2.tip();

  print(BankaHesabi.paylasilan);

  var hesap3 = BankaHesabi.ozel();
  print(BankaHesabi.paylasilan);

  SpaceShip myShip1 = SpaceShip();
  print(myShip1.runtimeType);
  var nedir = (myShip1 is Ship) ? 'dogrudur' : 'degildir';
  print(nedir.toString());
  nedir = (myShip1 is BankaHesabi) ? 'dogrudur' : 'degildir';
  print(nedir.toString());

  BankaHesabi myhesap4 = BankaHesabi('hakoc kakoc', 34.4546)
    ..bakiye = 787889.23
    ..bunudaekleyelim = 'olsun';

  print(myhesap4.bakiye);

  denemeler3();

  denemeler4();

  denemeler5();
}

void denemeler() {
  num a1 = 3.3435;
  int a2 = 5;
  print(a1.runtimeType);
  print(a1 as num);
  print(a2 as num);
  if (a1 is double) print('evet double');
  if (a1 is num) print('evet num');
  if (a1 is int) print('evet int');

  bool b1 = true;
  //String abc = '111';
  String? abc;

  if (b1) {
    abc ??= '2324234';
  }
  print(abc);
  //abc ??= 'shgashdgashf';
  print(abc);
}

void denemeler2() {
  List<int> myList1 = [3, 5, 6, 8];

  print(myList1);

  for (var i in myList1) {
    print(i);
  }

  print(sqRoot(10));
  print(sqRoot2(6));
}

void denemeler3() {
  List<String> footballplayers = ['Ronaldo', 'Messi', 'Neymar', 'Hazard'];

  for (var i in footballplayers) {
    print(i);
  }

  footballplayers.forEach((element) {
    print(element + '--------->');
  });

  print('abcdef'.runes);

  var dsk = 'İCardi';
  for (var i in dsk.runes) {
    print('${i}  =========   ${String.fromCharCode(i)}');
  }
}

void denemeler4() {
  var aList = [2, 4, 5, 7, 5, 6, 7, 4, 2, 2];
  print(aList);

  var dList1 = aList.map((e) => e * 2);

  print(dList1);
  var dList2 = aList.where((element) => element.isEven).toList();

  print(dList2);

  var mySet1 = <String>{'elma', 'armut', 'elma', 'kel'};
  Set<int> intSet1 = {2, 3, 4, 5, 5, 6};

  print(mySet1);
  print(intSet1);

  File myFile = File('pubspec.yaml');
  String contents = myFile.readAsStringSync();
  print(contents);
  print(myFile.absolute.path);

  var myStr6 = 'Selamlar';
  print(myStr6.yapbisiler());

  BenimFonksiyonlarim islem = Benim1;
  islem(9, 4);
  islem = Benim2;
  islem(9, 4);
}

void denemeler5() async {
  print('basla');
/*
  await gelecek.then((value) {
    print(value);
  });
*/
  var gelecek = await myFuture();
  print(gelecek);

  print('bit');
}

typedef BenimFonksiyonlarim(int a, int b);

Benim1(int a, int b) {
  print(a + b);
}

Benim2(int a, int b) {
  print(a - b);
}
