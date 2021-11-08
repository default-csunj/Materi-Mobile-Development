class Binatang {
  String nama;
  int umur;
  double berat;

  Binatang(this.nama, this.umur, this.berat);

  void makan() {
    print('${nama} sedang makan');
    berat += 1;
  }

  void tidur() {
    print('${nama} sedang tidur');
  }
}
