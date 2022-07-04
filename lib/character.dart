class Character {
  int _healthPoints = 0;

  int get healthPoints => _healthPoints;
  set healthPoint(int hp) {
    if (hp < 0) {
      hp *= -1;
    }

    _healthPoints = hp;
  }
}
