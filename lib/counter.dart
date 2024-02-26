class Counter {
  late int _count;
  int _increment = 1;

  Counter() {
    _count = 0;
  }

  int get count => _count;

  void incrementCount() {
    _count += _increment++;
  }

  void decrementCount() {
    _count = _count <= 0 ? 0 : _count - 1;
  }

  void resetCount() {
    _count = 0;
  }
}
