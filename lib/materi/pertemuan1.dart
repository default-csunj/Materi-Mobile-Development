import 'package:flutter/material.dart';

class Pertemuan1Pages extends StatelessWidget {
  const Pertemuan1Pages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pertemuan 1 Basic flutter"),
      ),
      body: Container(
        // Bagian 1, penjelasan terkait scaffold, container, center, margin, padding dan boxdecoration

        // Jelaskan widget center
        /*child: Center(
                child: Container(
                  color: Colors.green,
                  child: Container(
                    //padding dan margin jelaskan semua atribut mulai dari symmetric, all dan from ltrb
                    padding: const EdgeInsets.all(25),
                    margin: const EdgeInsets.all(30),
                    child: const Text("Pertemuan Pertama"),
                    decoration: const BoxDecoration(color: Colors.red),
                  ),
                ),
              ),
              */

        // Bagian 2 Penjelasan terkait Row Dan Column,
        child: Container(
          padding: const EdgeInsets.all(30),
          width: double.infinity,
          // // penjelasan terkait row
          // child: Row(
          //   // jelaskan terkait cross dan main axis alignment
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: const [Text("1"), Text("2"), Text("3")],
          // ),

          // // penjelasan terkait column
          // child: Column(
          //   // jelaskan terkait cross dan main axis alignment
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: const [Text("1"), Text("2"), Text("3")],
          // ),

          // // penjelasan terkait row dan column
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [Text("1"), Text("2"), Text("3")],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [Text("1"), Text("2"), Text("3")],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [Text("1"), Text("2"), Text("3")],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
