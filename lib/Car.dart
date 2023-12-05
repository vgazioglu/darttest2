class Car {
  String? brand;
  int? year;
  String? nedir;
  late String gecikmis;

  Car({this.brand = 'Volcano', this.year = 2024}) {
    print('default constructor');
  }

  Car.engine(this.nedir) {
    gecikmis = 'gecikmiş bir değişken';
    print('named constructor nedir ----> late $gecikmis');
  }

  Car.init()
      : brand = 'Ford',
        year = 1877;

  void prCarInfo() {
    if (brand == null) {
      brand = 'TOGG';
      year = 2023;
    }

    brand = (year! == 1887) ? 'American Ford' : 'European Ford';
    print(brand! + year!.toString());

    for (var i = 0; i < brand!.length; i++) {
      print(brand![i] + '***');
    }
  }
}
