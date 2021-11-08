import 'package:flutter/material.dart';
import 'package:materi/UI/Pertemuan3/first.dart';
import 'model/data.dart';

class DrawerPage extends StatelessWidget {
  List value = data;

  Widget nameData(value) {
    if (value.length == 0) {
      return Text('-');
    } else {
      return Text(
        '${value.last}',
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
          fontFamily: 'DancingScript',
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        return Container(
          width: constraint.maxWidth / 2,
          padding: EdgeInsets.all(50.0),
          color: Colors.purple.shade900,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 30.0),
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/image/cat3.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'Hello!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'DancingScript',
                      ),
                    ),
                    nameData(value),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30.0),
                child: ElevatedButton(
                  child: Text('Exit'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple.shade500,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return FirstPage();
                    }));
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
