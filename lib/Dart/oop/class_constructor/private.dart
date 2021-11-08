class Binatang {
  String nama;
  int umur;
  double _berat = 0; // Membuat berat tidak dapat diakses di file lain

  Binatang(this.nama, this.umur, this._berat);

  void makan() {
    print('${nama} sedang makan');
    _berat += 1;
  }

  void tidur() {
    print('${nama} sedang tidur');
  }

  void totalBerat() {
    print(_berat);
  }
}
