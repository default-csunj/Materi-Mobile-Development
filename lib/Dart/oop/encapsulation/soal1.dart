class Segitiga {
  late double setengah;
  late double alas;
  late double tinggi;

  luasSegitiga() {
    return setengah * alas * tinggi;
  }
}

void main() {
  Segitiga data = new Segitiga();

  data.setengah = 0.5;
  data.alas = 20.0;
  data.tinggi = 30.0;

  var res = data.luasSegitiga();

  print(res);
}
