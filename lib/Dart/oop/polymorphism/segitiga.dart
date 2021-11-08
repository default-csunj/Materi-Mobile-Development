import 'dart:math';

import 'bangun_datar.dart';

class Segitiga extends BangunDatar {
  late double alas;
  late double tinggi;

  Segitiga(double alas, double tinggi) {
    this.alas = alas;
    this.tinggi = tinggi;
  }

  double luas() {
    return 0.5 * alas * tinggi;
  }

  double keliling() {
    double sisiMiring = sqrt((alas * alas) + (tinggi * tinggi));
    return sisiMiring + alas + tinggi;
  }
}
