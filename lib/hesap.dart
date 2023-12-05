class BankaHesabi {
  String? _hesapNo;
  double? _bakiye;
  String? _gizliBilgi;
  static int paylasilan = 0;
  String? bunudaekleyelim;

  BankaHesabi(this._hesapNo, this._bakiye) {
    print('constructor düz hesap');
    paylasilan++;
  }

  BankaHesabi.ozel() : this('ewreret', 5465467.78);

  double get bakiye => _bakiye!;

  set bakiye(double bakiye) => _bakiye = bakiye;

  // bu olmadı
/*
  void setPay(int paylasilan) {
    this.paylasilan = paylasilan;
  }
*/
  void tip() {
    print('Hesap tipi: hesap --> ${_bakiye}');
  }
}

class VadeliBankaHesabi extends BankaHesabi {
  int _vade;

  VadeliBankaHesabi(super._hesapNo, super._bakiye, this._vade) {
    print('constructor vadeli hesap ---> $_bakiye');
  }

  @override
  void tip() {
    print('Hesap tipi: vadeli hesap $_bakiye');
  }
}
