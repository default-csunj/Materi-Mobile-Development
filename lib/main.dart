import 'package:flutter/material.dart';
// import 'package:materi/UI/Pertemuan1/stflwdgt.dart';
// import 'package:materi/UI/Pertemuan1/stlswdgt.dart';
import 'package:materi/UI/Pertemuan2/template.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Default Mobile Dev',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Home(),
    );
  }
}
