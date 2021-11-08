import 'package:flutter/material.dart';
import 'package:materi/UI/Pertemuan3/pages/detail/detail.dart';

class LeavesPage extends StatefulWidget {
  @override
  _LeavesPageState createState() => _LeavesPageState();
}

class _LeavesPageState extends State<LeavesPage> {
  var images = [
    'assets/image/leaves1.jpg',
    'assets/image/leaves2.jpg',
    'assets/image/leaves3.jpg',
    'assets/image/leaves4.jpg',
    'assets/image/leaves5.jpg',
    'assets/image/leaves1.jpg',
    'assets/image/leaves2.jpg',
    'assets/image/leaves3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.purple.shade500,
        centerTitle: true,
        title: Text('Leaves Section'),
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Container(
                  width: 150,
                  child: Image.asset(
                    images[index],
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text('Leaves'),
                subtitle: Text('Sekumpulan Daun'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailPage();
                  }));
                },
              ),
            );
          },
          itemCount: images.length,
        ),
      ),
    );
  }
}
