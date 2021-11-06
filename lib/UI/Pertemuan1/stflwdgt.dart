import 'package:flutter/material.dart';

class stfl extends StatefulWidget {
  @override
  _stflState createState() => _stflState();
}

class _stflState extends State<stfl> {
  var baseSize = 10.0;

  var fontBold = [FontWeight.normal, FontWeight.bold];
  var boldIndex = 0;

  var listColor = [Colors.red, Colors.green, Colors.blue];
  var colorIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Pertemuan 1"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: listColor[colorIndex],
                width: 200,
                height: 200,
                margin: EdgeInsets.all(20.0),
              ),
              Container(
                child: Text(
                  "INI TEXT DEFAULT",
                  style: TextStyle(
                    fontSize: baseSize,
                    fontWeight: fontBold[boldIndex],
                    color: Colors.yellow,
                  ),
                  textAlign: TextAlign.center,
                ),
                color: Colors.brown,
                width: 60,
                height: 60,
                padding: EdgeInsets.symmetric(vertical: 20.0),
                margin: EdgeInsets.all(20.0),
              ),
              Container(
                child: Text(
                  "Bold Index : ${boldIndex}",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                  ),
                  textAlign: TextAlign.center,
                ),
                color: Colors.brown,
                width: 60.0,
                height: 60.0,
                padding: EdgeInsets.symmetric(vertical: 20.0),
                margin: EdgeInsets.all(20.0),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: Icon(
              Icons.publish,
              size: 30.0,
            ),
            onPressed: () {
              setState(() {
                baseSize = 20.0;
              });
            },
          ),
          FloatingActionButton(
            child: Icon(
              Icons.restore_sharp,
              size: 30.0,
            ),
            onPressed: () {
              setState(() {
                baseSize = 10.0;
              });
            },
          ),
          FloatingActionButton(
            child: Icon(
              Icons.bloodtype_rounded,
              size: 30.0,
            ),
            onPressed: () {
              setState(() {
                if (boldIndex == 0)
                  boldIndex = 1;
                else
                  boldIndex = 0;
              });
            },
          ),
          FloatingActionButton(
            child: Icon(
              Icons.color_lens,
              size: 30.0,
            ),
            onPressed: () {
              setState(() {
                if (colorIndex == 2)
                  colorIndex = 0;
                else
                  colorIndex += 1;
              });
            },
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
