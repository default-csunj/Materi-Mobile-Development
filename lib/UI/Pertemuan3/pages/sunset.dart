import 'package:flutter/material.dart';

class SunsetPage extends StatefulWidget {
  @override
  _SunsetPageState createState() => _SunsetPageState();
}

class _SunsetPageState extends State<SunsetPage> {
  var images = [
    'assets/image/sunset.jpg',
    'assets/image/sunset1.jpg',
    'assets/image/sunset2.jpg',
    'assets/image/sunset3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.purple.shade500,
        centerTitle: true,
        title: Text('Sunset Section'),
      ),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10.0),
                child: ListView.separated(
                  shrinkWrap: true,
                  primary: false,
                  itemBuilder: (context, index) {
                    return Image.asset(
                      images[index],
                    );
                  },
                  itemCount: images.length,
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Colors.transparent,
                    );
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                height: 200,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Image.asset(
                      images[index],
                    );
                  },
                  itemCount: images.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
