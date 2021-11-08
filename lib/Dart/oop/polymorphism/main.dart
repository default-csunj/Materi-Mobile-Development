import 'persegi.dart';
import 'segitiga.dart';
import 'lingkaran.dart';
import 'bangun_datar.dart';

void main() {
  BangunDatar bgnDatar = new BangunDatar();

  BangunDatar persegi = new Persegi(2);
  BangunDatar segitiga = new Segitiga(3, 4);
  BangunDatar lingkaran = new Lingkaran(10);

  bgnDatar.luas();

  print('Luas Persegi = ${persegi.luas()}');
  print('Luas Segitiga = ${segitiga.luas()}');
  print('Luas Lingkaran = ${lingkaran.luas()}');

  print('');

  bgnDatar.keliling();

  print('Keliling Persegi = ${persegi.keliling()}');
  print('Keliling Segitiga = ${segitiga.keliling()}');
  print('Keliling Lingkaran = ${lingkaran.keliling()}');
}
