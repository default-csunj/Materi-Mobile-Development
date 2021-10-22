import 'package:flutter/material.dart';
import 'package:materi/Pertemuan1/stflwdgt.dart';
import 'package:materi/Pertemuan1/stlswdgt.dart';

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

        /// Explain All the Colors Widget
      ),
      home: stfl(),
    );
  }
}
