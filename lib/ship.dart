abstract class Ship {
  String get shipName;
  set shipName(String shipName);

  void prShipInfo();
}

class SpaceShip implements Ship {
  @override
  String get shipName => 'StarTrek';

  @override
  set shipName(String shipName) {
    this.shipName = shipName;
  }

  @override
  void prShipInfo() {
    print('ben bir uzay gemisiyim');
  }
}
