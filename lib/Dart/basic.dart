void main() {
  // Basic Print
  print('Testing');

  // Type Data
  String test = 'Flutter Is Fun';
  double value = 3.14;
  int number = 23;
  bool res = true;
  List data = [1, 2, 3, 'Dart', 'JS', 'Python'];
  // Immutable Type
  final a = 1;
  const b = 2;
  print(data);
  print('${data}');
  // String -> int
  var one = int.parse('1');
  // String -> double
  var pi = double.parse('3.14');
  // int -> String
  var oneStr = 11.toString();
  // double -> String
  var piStr =
      3.14.toStringAsFixed(2); // => 2 adalah banyaknya angka dibelakang koma
  print(piStr);

  // Operator
  int angka1 = 10;
  int angka2 = 20;
  var result1 = angka1 + angka2;
  var result2 = angka1 - angka2;
  var result3 = angka1 * angka2;
  var result4 = angka1 / angka2;
  var result5 = angka1 % angka2;
  var result6 = angka1 ~/ angka2;
  print(result6);

  // Kondisi
  var tmp = 1;
  var tmp_str = 1;
  bool temp = false;
  // ==, !=, >, <, >=, <=
  if (tmp == tmp_str) {
    temp = true;
  } else {
    temp = false;
  }
  print(temp);
  // ||, &&, !
  if (!temp) {
    print('temp True');
  }

  // Try, Catch, Finally
  try {
    var a = 1;
    var b = 0;
    print(a ~/ b);
  } catch (e) {
    print('Exception happened: Error Value');
  } finally {
    print('Your Code Error');
  }

  // Looping
  // While Loop
  int i = 0;
  while (i != 10) {
    print('While Loop');
    i++;
  }
  // For Loop
  int total = 10;
  for (var j = 0; j < total; j++) {
    print(j);
  }

  // Function
  testNama() {
    return 'Nama Saya';
  }

  kalkulasi(int a, int b) {
    return a + b;
  }

  print(testNama());
  print(kalkulasi(1, 11));

  // Pendalaman List dan Maps
  List cont = [1, 2, 3];
  List multiCont = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];
  Map maps = {
    'ML': 'Mobile Legend',
    'LOL': 'League of Legend',
    'RE': 'Resident Evil',
  };
  print(multiCont[0][0]);

  // Method dalam List
  cont.add(4);
  print(cont);
  cont.clear();
  print(cont);

  // Switch Case
  var cs = 6;
  switch (cs) {
    case 1:
      print('Cs nilainya 1');
      break;
    case 2:
      print('Cs nilainya 2');
      break;
    default:
      print('Cs bernilai lain');
  }
}
