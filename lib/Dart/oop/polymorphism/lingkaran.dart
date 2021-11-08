import 'bangun_datar.dart';

class Lingkaran extends BangunDatar {
  late double r;
  double pi = 3.14;

  Lingkaran(double r) {
    this.r = r;
  }

  double luas() {
    return pi * r * r;
  }

  double keliling() {
    return 2 * pi * r;
  }
}
