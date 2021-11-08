class Lingkaran {
  double pi = 3.14;
  late double r;

  void setR(double jari) {
    if (jari < 0) {
      jari *= -1;
    }
    r = jari;
  }

  double getR() {
    return r;
  }

  double luas() {
    return pi * r * r;
  }
}
