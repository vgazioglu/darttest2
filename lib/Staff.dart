class Staff {
  String? _name;
  int _age;

  Staff(this._name, this._age) {
    print('constructor called staff');
  }

  String get name => _name!;

  set name(String name) => _name = name;

  void prStaff() {
    print(_name! + _age.toString());
  }
}

class Soldier extends Staff {
  String? sweapon;

  Soldier(super._name, super._age, this.sweapon) {
    print('constructor but super called also');
  }

  void prSoldier() {
    print(_name! + _age.toString() + sweapon!);
  }
}

class Worker extends Staff {
  String? area;

  Worker(super._name, super._age, this.area) {
    print('worker constructer called');
  }

  @override
  void prStaff() {
    print(_name! + _age.toString() + area!);
    print('işçisin sen işçi kal');
  }
}

class Aylak extends Staff with YapayZeka {
  Aylak(super._name, super._age);
  void prAylak() {
    print('aylak budur');
  }
}

mixin YapayZeka on Staff {
  void prYZ() {
    print('Ben de yapaz zeka desteği de var');
  }
}
