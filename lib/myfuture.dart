import 'dart:math';

Future<int> myFuture() {
  Random rnd1 = Random();

  int rndnumber1 = rnd1.nextInt(20);

  return Future.delayed(Duration(seconds: 5), () => rndnumber1);
}
