class Kaskat {
  int _value = 0;

  void mayadd(int val) => _value += val;
  void maysub(int val) => _value -= val;
  void maymul(int val) => _value *= val;
  int myadd3() {
    _value += 3;
    return _value;
  }

  mayres() {
    print(_value);
  }
}
