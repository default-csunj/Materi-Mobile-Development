import 'binatang.dart';

class Kucing extends Binatang {
  String nama;
  int umur;
  double berat;

  Kucing(this.nama, this.umur, this.berat)
      : super(nama, 0, 0); // Mendeclare Value untuk Parent-nya

  void jalan() {
    print('${nama} sedang jalan');
  }
}
