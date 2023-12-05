class Memeli {
  String? name;
  String? tip;

  Memeli(this.name, this.tip) {
    print('memeli constructor');
  }

  void prMemeli() {
    print('sdsdsf');
  }
}

class Kus extends Memeli {
  int? deger;

  Kus(super.name, super.tip, this.deger) {}

  @override
  void prMemeli() {
    print('implement ettik');
    print(name! + tip!);
  }
}
