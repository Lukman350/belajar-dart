class PersegiPanjang {
  double _panjang = 0, _lebar = 0;

  double get panjang => _panjang;
  double get lebar => _lebar;

  set panjang(double panjang) {
    if (panjang < 0) {
      panjang *= -1;
    }

    _panjang = panjang;
  }

  set lebar(double lebar) {
    if (lebar < 0) {
      lebar *= -1;
    }

    _lebar = lebar;
  }

  double hitungLuas() => _panjang * _lebar;
  get luas => _panjang * _lebar;
}
